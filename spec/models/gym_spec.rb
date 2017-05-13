require 'rails_helper'

RSpec.describe Gym, type: :model do

  it "creates gym" do
  Gym.create name:"fit24", founded:2017, address: "asdasdads"
  expect(Gym.count).to eq(2)

  end
end
