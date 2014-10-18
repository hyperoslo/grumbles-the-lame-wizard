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
    method       = internal_method params[:verb]
    entity       = game.find params[:entity]
    other_entity = game.find params[:other_entity]

    @response = if other_entity
                  entity.send method, game: game, other: other_entity
                else
                  entity.send method, game: game
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
