class GameController < ApplicationController
  def handle
    verb         = params[:verb].to_sym
    entity       = game.find params[:entity]
    other_entity = game.find params[:other_entity]

    @response = if other_entity
                  entity.send verb, game: game, other: other_entity
                else
                  entity.send verb, game: game
                end
  end

  protected

  def game
    @game ||= Game.new
  end
end
