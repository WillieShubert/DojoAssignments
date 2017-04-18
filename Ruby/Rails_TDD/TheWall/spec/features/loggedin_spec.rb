require "rails_helper"

feature "logged in" do
  before(:each) do
    create(:user)
    visit root_path
    fill_in "username", with: "willie"
    click_button "Sign In"
  end

  scenario "logout feature" do
    expect(page).to have_link("Logout", :href=>"/logout")
    click_link("Logout")
    expect(current_path).to eq('/')
  end

  scenario "there should be a form to create a message" do
    expect(page).to have_field("message")
    expect(page).to have_button("Post a Message")
  end
end
