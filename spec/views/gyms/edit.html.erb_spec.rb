require 'rails_helper'

RSpec.describe "gyms/edit", type: :view do
  before(:each) do
    @gym = assign(:gym, Gym.create!(
      :name => "MyString",
      :founded => 1,
      :address => "MyString"
    ))
  end

  it "renders the edit gym form" do
    render

    assert_select "form[action=?][method=?]", gym_path(@gym), "post" do

      assert_select "input#gym_name[name=?]", "gym[name]"

      assert_select "input#gym_founded[name=?]", "gym[founded]"

      assert_select "input#gym_address[name=?]", "gym[address]"
    end
  end
end
