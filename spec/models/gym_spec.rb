require 'rails_helper'

RSpec.describe Gym, type: :model do

  it "creates gym" do
  FactoryGirl.create(:gym)
  expect(Gym.count).to eq(1)

  end

  it "without a name is not valid" do
  gym = Gym.create  founded:1900, address: "string"

  expect(gym).not_to be_valid
  end

  it "is not saved without founded" do
   gym = Gym.create name: "gymi"

   expect(gym).not_to be_valid
   expect(Gym.count).to eq(0)
 end

  it "founded before 1800 not valid" do
    gym = Gym.create name: "gymi", founded:1400, address: "osote"
    expect(gym).not_to be_valid
  end

  it "founded at 1800 is valid" do
    gym = Gym.create name: "gymi", founded:1800, address: "osote"
    expect(gym).to be_valid
  end
end
