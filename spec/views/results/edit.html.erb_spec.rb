require 'rails_helper'

RSpec.describe "results/edit", type: :view do
  before(:each) do
    @result = assign(:result, Result.create!(
      :move_id => 1,
      :user_id => 1,
      :weight => 1.5,
      :reps => 1
    ))
  end

  it "renders the edit result form" do
    render

    assert_select "form[action=?][method=?]", result_path(@result), "post" do

      assert_select "input#result_move_id[name=?]", "result[move_id]"

      assert_select "input#result_user_id[name=?]", "result[user_id]"

      assert_select "input#result_weight[name=?]", "result[weight]"

      assert_select "input#result_reps[name=?]", "result[reps]"
    end
  end
end
