require 'rails_helper'

RSpec.describe "fees/show", type: :view do
  before(:each) do
    @fee = assign(:fee, Fee.create!(
      :value => "9.99",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Name/)
  end
end
