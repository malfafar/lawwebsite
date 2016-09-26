require 'rails_helper'

RSpec.describe "social_bodies/show", type: :view do
  before(:each) do
    @social_body = assign(:social_body, SocialBody.create!(
      :name => "Name",
      :role => 1,
      :position => "Position"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Position/)
  end
end
