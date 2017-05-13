require 'rails_helper'

RSpec.describe Membership, type: :model do
  it "creates membership with correct gym and user id" do
    gym = Gym.create name: "nimi", founded: 2017, address: "katu"
    user = User.create username:"Pekka", password:"Secret1", password_confirmation:"Secret1"
    m = Membership.create user_id: user.id, gym_id: gym.id

    expect(m.valid?).to be(true)
    expect(Membership.count).to eq(1)
  end
end
