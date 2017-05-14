require 'rails_helper'

RSpec.describe "moves/new", type: :view do
  before(:each) do
    assign(:move, Move.new())
  end

  it "renders new move form" do
    render

    assert_select "form[action=?][method=?]", moves_path, "post" do
    end
  end
end
