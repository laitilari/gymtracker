require 'rails_helper'

describe "Gyms page" do
  it "lists the existing gyms" do
    Gym.create name:"fit24", founded:2017, address: "asdasdads"

    visit gyms_path

    expect(page).to have_content "fit24"

  end

  it "allows user to navigate to page of a gym" do
    Gym.create name:"Fit24", founded:2017, address: "asdasdads"
    visit gyms_path

    click_link "Fit24"

    expect(page).to have_content "Fit24"
    expect(page).to have_content "Founded: 2017"
  end

end
