require 'rails_helper'

describe "Moves page" do
  it "lists the existing moves" do
    Move.create name:"penkki", description: "peke"

    visit moves_path

    expect(page).to have_content "penkki"

  end

  it "allows user to navigate to page of a move" do
    Move.create name:"penkki", description: "peke"
    visit moves_path

    click_link "penkki"

    expect(page).to have_content "penkki"
    expect(page).to have_content "peke"
  end

end
