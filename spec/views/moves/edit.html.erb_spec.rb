require 'rails_helper'

RSpec.describe "moves/edit", type: :view do
  before(:each) do
      controller.singleton_class.class_eval do
        protected
          def current_user
            true
          end
          helper_method :current_user
      end
    @move = assign(:move, Move.create!(:name => "GYMI"))
  end

  it "renders the edit move form" do
    render
    assert_select "form[action=?][method=?]", move_path(@move), "post" do
    end
  end
end
