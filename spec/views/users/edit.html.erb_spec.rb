require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    controller.singleton_class.class_eval do
      protected
        def current_user
          true
        end
        helper_method :current_user
    end
    @user = assign(:user, FactoryGirl.create(:user))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do
    end
  end
end
