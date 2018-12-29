require "rails_helper"

RSpec.describe "player character pages" do
  it "can load the index page for characters" do
    visit player_characters_path

    expect(page).to have_content "Characters"
  end

  it "can load the new page for characters" do
    visit new_player_character_path

    expect(page).to have_selector "form"
    expect(page).to have_css "input#player_character_name"
    expect(page).to have_css "input#player_character_level"
    expect(page).to have_css "input#player_character_max_health"

    fill_in "player_character_name", with: "Max Strongarm"
    fill_in "player_character_level", with: "4"
    fill_in "player_character_max_health", with: "45"
    click_button "Create"

    expect(page).to have_content "Max Strongarm"

    visit player_characters_path

    expect(page).to have_content "Max Strongarm"
  end
end