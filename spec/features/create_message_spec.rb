require "rails_helper"

RSpec.feature "Message management", :type => :feature do
  scenario "User creates a new message" do
    visit "/messages/new"

    fill_in "Body", :with => "Body message"
    choose('after the first link visit')
    click_button "Create Message"

    expect(page).to have_text("Message was successfully created.")
  end
end