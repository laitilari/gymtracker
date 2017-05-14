require 'rails_helper'

RSpec.describe User, type: :model do
  it "has the username set correctly" do
    user = User.new username:"Pekka"

    expect(user.username).to eq("Pekka")
  end

  describe "with a proper password" do
    let(:user){ FactoryGirl.create(:user) }

    it "is saved" do
      expect(user).to be_valid
      expect(User.count).to eq(1)
    end

    it "is not saved without a password" do
      user = User.create username:"Pekka"

      expect(user).not_to be_valid
      expect(User.count).to eq(0)
    end
  end

  describe "top move" do
   let(:move){ FactoryGirl.create(:move) }
   let(:user){FactoryGirl.create(:user) }

   it "has method for determining one" do
     expect(user).to respond_to(:topMove)
   end

   it "without moves does not have one" do
     expect(user.topMove).to eq(nil)
   end
 end
end
