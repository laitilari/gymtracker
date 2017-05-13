require 'rails_helper'

describe "signin page" do

  it "can signin with right credentials" do
    User.create username:"Pekka", password:"Secret1", password_confirmation:"Secret1"

    visit signin_path

    fill_in('username', with:'Pekka')
    fill_in('password', with:'Secret1')
    click_button('Log in')

    expect(page).to have_content 'Welcome back!'
    expect(page).to have_content 'Pekka'
  end

end
