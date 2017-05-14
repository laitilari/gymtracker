require 'rails_helper'

RSpec.describe "moves/index", type: :view do
  before(:each) do
      controller.singleton_class.class_eval do
        protected
          def current_user
            true
          end
          helper_method :current_user
      end
    assign(:moves, [
      Move.create!(:name => "GYMI")
    ])
  end

  it "renders a list of moves" do
    render
    assert_select "tr>td", :text => "GYMI".to_s, :count => 1
  end
end
