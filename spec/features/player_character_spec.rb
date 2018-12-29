require "rails_helper"

RSpec.describe "player character pages" do
  it "can load the index page for characters" do
    visit player_characters_path

    expect(page).to have_content "characters"
  end

  it "can load the new page for characters" do
    visit new_player_character_path

    expect(page).to have_selector "form"
  end
end