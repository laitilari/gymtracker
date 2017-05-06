require 'rails_helper'

RSpec.describe "results/show", type: :view do
  before(:each) do
    @result = assign(:result, Result.create!(
      :move_id => 2,
      :user_id => 3,
      :weight => 4.5,
      :reps => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5/)
  end
end
