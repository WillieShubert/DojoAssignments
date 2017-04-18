require 'rails_helper'
feature "User creates an account" do
  scenario "successfully signs in an user" do
    create(:user)

    visit root_path

    fill_in "username", with: "codingdojo"
    fill_in "first_name", with: "Coding"
    click_button "Sign In"
    expect(page).to have_content("Welcome Coding")
    expect(current_path).to eq(messages_path)
  end

  scenario "unsuccessfully sign in a user" do
    visit root_path

    fill_in "username", with: "a"
    click_button "Sign In"
    expect(page).to have_content("Username is too short (minimum is 5 characters)")
    expect(current_path).to eq(root_path)
  end
end
