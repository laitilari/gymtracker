require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    controller.singleton_class.class_eval do
      protected
        def current_user
          true
        end
        helper_method :current_user
    end
    assign(:users, [
      User.create!(:username => 'jape', :password => 'jaajaa'),
      User.create!(:username => 'jape2', :password => 'jaajaa')
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => 'jape'.to_s, :count => 1
    assert_select "tr>td", :text => 'jape2'.to_s, :count => 1
  end
end
