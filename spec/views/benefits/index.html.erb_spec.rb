require 'rails_helper'

RSpec.describe "benefits/index", type: :view do
  before(:each) do
    assign(:benefits, [
      Benefit.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Benefit.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of benefits" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
