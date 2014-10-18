class GameController < ApplicationController
  INTERNAL_METHOD_NAMES = {
    'SEARCH' => :describe,
    'GET'    => :pick_up,
    'MOVE'   => :move_to,
    'COPY'   => :duplicate,
    'LOCK'   => :lock,
    'UNLOCK' => :unlock,
    'MERGE'  => :merge,
    'REPORT' => :talk_to,
    'PATCH'  => :patch,
  }

  respond_to :html, :json

  def index
  end

  def handle
    method = internal_method params[:verb]

    case method
    when :move_to
      target_location = game.find params[:entity]
      render text: game.player.send(method, game: game, target: target_location)
    else
      entity       = game.player.references game, params[:entity]
      other_entity = game.player.references game, params[:other_entity]

      text = if other_entity
               entity.send method, game: game, other: other_entity
             else
               entity.send method, game: game
             end

      render text: text
    end

    save!
  end

  protected

  def game
    @game ||= load! || Game.template
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

  def internal_method(funny)
    INTERNAL_METHOD_NAMES.fetch funny
  end
end
