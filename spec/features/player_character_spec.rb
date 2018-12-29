require "rails_helper"

RSpec.describe "player character pages" do
  it "can load the index page for characters" do
    visit player_characters_path

    expect(page).to have_content "characters"
  end
end