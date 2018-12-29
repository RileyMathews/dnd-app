require "rails_helper"

RSpec.describe "loading the index page" do
  it "can sucsessfuly load the index page" do
    visit root_path

    expect(page).to have_content "Welcome"
  end
end
