require 'rails_helper'

RSpec.describe "fees/index", type: :view do
  before(:each) do
    assign(:fees, [
      Fee.create!(
        :value => "9.99",
        :name => "Name"
      ),
      Fee.create!(
        :value => "9.99",
        :name => "Name"
      )
    ])
  end

  it "renders a list of fees" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
