require 'rails_helper'

RSpec.describe "results/index", type: :view do
  before(:each) do
    assign(:results, [
      Result.create!(
        :move_id => 2,
        :user_id => 3,
        :weight => 4.5,
        :reps => 5
      ),
      Result.create!(
        :move_id => 2,
        :user_id => 3,
        :weight => 4.5,
        :reps => 5
      )
    ])
  end

  it "renders a list of results" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
