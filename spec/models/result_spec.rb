require 'rails_helper'

RSpec.describe Result, type: :model do
  it "has the correct user" do
    user = FactoryGirl.create(:user)
    move = FactoryGirl.create(:move)
    result = Result.create user_id:user.id, move_id:move.id, weight:100, reps: 100
    expect(result.user.username).to eq("Pekka")
  end
end
