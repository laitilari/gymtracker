require 'rails_helper'

RSpec.describe User, type: :model do
  it "has the username set correctly" do
    user = FactoryGirl.create(:user)

    expect(user.valid?).to be(true)
    expect(User.count).to eq(1)
  end
end
