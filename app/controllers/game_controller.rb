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

    if method == :move_to
      target_location = game.find params[:entity]
      text = <<-HTML
        <div class="response">
          #{game.player.current_location.move_player_to(params[:entity])}
        </div>
      HTML

    elsif method.present?
      entity       = game.player.references game, params[:entity]
      other_entity = game.player.references game, params[:other_entity]

      if entity.nil?
        text = <<-HTML
          <div class="response error">
            #{params[:entity]} does not really exist, it’s all in your mind.
          </div>
        HTML

      else
        text = if other_entity
                 entity.send method, game: game, other: other_entity
               else
                 entity.send method, game: game
               end

        text = <<-HTML
          <div class="response">
            #{text}
          </div>
        HTML
      end
    else
      text = <<-HTML
        <div class="response error">
          You try to #{params[:verb]}, but realize you have no idea how to do that.
        </div>
      HTML
    end

    render text: text

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
    INTERNAL_METHOD_NAMES.fetch(funny) { nil }
  end
end
