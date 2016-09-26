require 'rails_helper'

RSpec.describe "social_bodies/index", type: :view do
  before(:each) do
    assign(:social_bodies, [
      SocialBody.create!(
        :name => "Name",
        :role => 1,
        :position => "Position"
      ),
      SocialBody.create!(
        :name => "Name",
        :role => 1,
        :position => "Position"
      )
    ])
  end

  it "renders a list of social_bodies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
