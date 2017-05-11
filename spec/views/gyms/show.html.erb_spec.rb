require 'rails_helper'

RSpec.describe "gyms/show", type: :view do
  before(:each) do
    @gym = assign(:gym, Gym.create!(
      :name => "Name",
      :founded => 2,
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Address/)
  end
end
