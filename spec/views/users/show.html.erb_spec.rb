require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
      controller.singleton_class.class_eval do
        protected
          def current_user
            true
          end
          helper_method :current_user
      end
    @user = assign(:user, User.create!(:username => 'jape', :password => 'jaajaa'))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match('jape')
  end
end
