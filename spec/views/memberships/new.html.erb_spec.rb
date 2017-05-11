require 'rails_helper'

RSpec.describe "memberships/new", type: :view do
  before(:each) do
    assign(:membership, Membership.new(
      :gym_id => 1,
      :user_id => 1
    ))
  end

  it "renders new membership form" do
    render

    assert_select "form[action=?][method=?]", memberships_path, "post" do

      assert_select "input#membership_gym_id[name=?]", "membership[gym_id]"

      assert_select "input#membership_user_id[name=?]", "membership[user_id]"
    end
  end
end
