require 'rails_helper'

RSpec.describe "laws/index", type: :view do
  before(:each) do
    assign(:laws, [
      Law.create!(
        :url => "MyText",
        :title => "Title",
        :description => "MyText"
      ),
      Law.create!(
        :url => "MyText",
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of laws" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
