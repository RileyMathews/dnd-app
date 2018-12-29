require "rails_helper"

RSpec.describe PlayerCharacter do

  def valid_player_character
    PlayerCharacter.new(
      name: "Ono",
      level: 5,
      max_health: 60,
      current_health: 47
    )
  end

  context "when the player has all valid information" do
    it "returns as valid" do
      player = valid_player_character

      expect(player.valid?).to be true
    end

    it "allows nil current_health" do
      player = valid_player_character
      player.current_health = nil

      expect(player.valid?).to be true
    end
  end

  context "when the player character does not have valid information" do
    it "returns invalid with blank name" do
      player = valid_player_character
      player.name = "   "

      expect(player.valid?).to be false
    end

    it "returns invalid with a long name" do
      player = valid_player_character
      player.name = "a" * 101

      expect(player.valid?).to be false
    end

    it "returns invalid with a nil name" do
      player = valid_player_character
      player.name = nil

      expect(player.valid?).to be false
    end

    it "returns invalid with a nil max health" do
      player = valid_player_character
      player.max_health = nil

      expect(player.valid?).to be false
    end
  end
end