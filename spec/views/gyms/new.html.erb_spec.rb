require 'rails_helper'

RSpec.describe "gyms/new", type: :view do
  before(:each) do
      controller.singleton_class.class_eval do
        protected
          def current_user
            true
          end
          helper_method :current_user
      end
    assign(:gym, Gym.new(
      :name => "MyString",
      :founded => 1,
      :address => "MyString"
    ))
  end

  it "renders new gym form" do
    render

      assert_select "form[action=?][method=?]", gyms_path, "post" do

      assert_select "input#gym_name[name=?]", "gym[name]"

      assert_select "input#gym_founded[name=?]", "gym[founded]"

      assert_select "input#gym_address[name=?]", "gym[address]"
    end
  end
end
