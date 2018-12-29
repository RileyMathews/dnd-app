class PlayerCharactersController < ApplicationController
  def index
    @player_characters = PlayerCharacter.all
  end

  def new
    @player_character = PlayerCharacter.new
  end

  def create
    @player_character = PlayerCharacter.new(player_character_params)
    if @player_character.save
      redirect_to player_characters_path
    end
  end

  private

  def player_character_params
    params.require(:player_character).permit(:name, :level, :max_health)
  end
end