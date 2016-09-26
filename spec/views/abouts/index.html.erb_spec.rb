require 'rails_helper'

RSpec.describe "abouts/index", type: :view do
  before(:each) do
    assign(:abouts, [
      About.create!(
        :objectives => "MyText",
        :statutes => "MyText",
        :social_bodies => "MyText",
        :message => "MyText"
      ),
      About.create!(
        :objectives => "MyText",
        :statutes => "MyText",
        :social_bodies => "MyText",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of abouts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 8
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
