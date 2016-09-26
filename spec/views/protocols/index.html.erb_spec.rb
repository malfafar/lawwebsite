require 'rails_helper'

RSpec.describe "protocols/index", type: :view do
  before(:each) do
    assign(:protocols, [
      Protocol.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Protocol.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of protocols" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
