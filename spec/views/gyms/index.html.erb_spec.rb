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
        :founded => 1888,
        :address => "Address"
      ),
      Gym.create!(
        :name => "Nimi",
        :founded => 1888,
        :address => "Address"
      )
    ])
  end

  it "renders a list of gyms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 1
    assert_select "tr>td", :text => "Nimi".to_s, :count => 1
    assert_select "tr>td", :text => 1888.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
