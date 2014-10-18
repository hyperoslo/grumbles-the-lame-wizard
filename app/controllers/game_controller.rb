class GameController < ApplicationController
  INTERNAL_METHOD_NAMES = {
    'SEARCH' => :describe,
    'GET'    => :pickup,
    'MOVE'   => :move_to,
    'COPY'   => :duplicate,
    'LOCK'   => :lock,
    'UNLOCK' => :unlock,
    'MERGE'  => :merge,
    'REPORT' => :talk_to,
    'PATCH'  => :patch,
  }

  def handle
    method = internal_method params[:verb]

    case method
    when :move_to
      target_location = game.find params[:entity]
      render text: game.player.send(method, game: game, target: target_location)
    else
      entity       = game.find_in_tree params[:entity]
      other_entity = game.find_in_tree params[:other_entity]

      render text: if other_entity
                    entity.send method, game: game, other: other_entity
                  else
                    entity.send method, game: game
                  end
    end
  end

  protected

  def game
    @game ||= Game.template
  end

  private

  def internal_method(funny)
    INTERNAL_METHOD_NAMES.fetch funny
  end
end
