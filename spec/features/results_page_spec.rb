require 'rails_helper'

describe "Results page" do
  before(:each) do
    User.create username:"Pekka", password:"Secret1", password_confirmation:"Secret1"
    Move.create name:"penkki", description: "peke"
    Result.create move_id:1, user_id:1, weight:50, reps:10
  end
  it "lists the existing results" do
    visit results_path

    expect(page).to have_content "50"
  end

  it "lists the recent results" do
    visit results_path

    expect(page).to have_content "Pekka"

  end
end
