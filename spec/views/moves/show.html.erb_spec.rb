require 'rails_helper'

RSpec.describe "moves/show", type: :view do
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match('GYMI')
  end
end
