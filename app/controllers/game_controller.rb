class GameController < ApplicationController
  INTERNAL_METHOD_NAMES = {
    'SEARCH' => :search,
    'GET'    => :pick_up,
    'MOVE'   => :move_to,
    'COPY'   => :duplicate,
    'LOCK'   => :lock,
    'UNLOCK' => :unlock,
    'MERGE'  => :merge,
    'REPORT' => :talk_to,
    'PATCH'  => :patch,
    'DELETE' => :drop,
    'TRACE'  => :describe,
  }

  respond_to :html, :json

  def index
  end

  def handle
    return error 400, missing_method if method.nil?
    return error 404, missing_entity if entity.nil?
    return error 404, missing_other_entity if params[:other_entity] && other_entity.nil?

    # Delegate to controller, interaction factory or entity
    text = if respond_to? method, true
             send(method, entity)
           elsif other_entity
             InteractionFactory.new(entity, other_entity).perform(method)
           else
             entity.send method
           end

    success text

    save!
  end

  protected

  def search(entity)
    if entity.in? [game.player, game.player.current_location]
      entity.search
    else
      "You can’t search <strong>#{entity.id}</strong>"
    end
  end

  def move_to(next_location)
    current_location = game.player.current_location

    if current_location == next_location
      "You already are there"
    else
      current_location.move_player_to next_location
    end
  end

  private

  def load!
    data = REDIS.get(session_id)
    Marshal.load(data) if data
  end

  def save!
    data = Marshal.dump(game)
    REDIS.set(session_id, data)
  end

  def session_id
    session[:session_id]
  end

  def game
    @game ||= load! || Game.template
  end

  def method
    INTERNAL_METHOD_NAMES[params[:verb]]
  end

  def entity
    game.player.references params[:entity]
  end

  def other_entity
    game.player.references params[:other_entity]
  end

  def missing_method
    "You try to <strong>#{params[:verb]}</strong>, but realize you have no idea how to do that."
  end

  def missing_other_entity
    missing_entity params[:other_entity]
  end

  def missing_entity(id = params[:entity])
    "There is no <strong>#{id}</strong> nearby."
  end

  def success(text)
    render json: { response: text, status: 'success' }
  end

  def error(status, text)
    render status: status, json: { response: trim(text), status: 'error' }
  end

  def trim(text)
    text.gsub(/^ +/, '')
  end
end
