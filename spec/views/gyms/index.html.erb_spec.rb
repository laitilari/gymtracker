require 'rails_helper'

RSpec.describe "gyms/index", type: :view do
  before(:each) do
    controller.singleton_class.class_eval do
      protected
        def current_user
          true
        end
        helper_method :current_user
    end
    assign(:gyms, [
      Gym.create!(
        :name => "Name",
        :founded => 2,
        :address => "Address"
      ),
      Gym.create!(
        :name => "Name",
        :founded => 2,
        :address => "Address"
      )
    ])
  end

  it "renders a list of gyms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
