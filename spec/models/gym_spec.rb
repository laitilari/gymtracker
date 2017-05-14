require 'rails_helper'

RSpec.describe Gym, type: :model do

  it "creates gym" do
  FactoryGirl.create(:gym)
  expect(Gym.count).to eq(1)

  end
end
