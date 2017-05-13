require 'rails_helper'

describe "Users page" do
  before(:each) do
    User.create username:"Pekka", password:"Secret1", password_confirmation:"Secret1"
    Move.create name:"penkki", description: "peke"
    Result.create move_id:1, user_id:1, weight:50, reps:10
  end

  it "lists the existing users" do
    visit users_path
    expect(page).to have_content "Pekka"

  end
  
  it "allows user to navigate to page of user" do
    visit users_path

    click_link "Pekka"

    expect(page).to have_content "Pekka"
  end

    it "allows user to navigate to latest result of user" do
      visit users_path

      first(:link, 'penkki').click

      expect(page).to have_content "50"
    end
end
