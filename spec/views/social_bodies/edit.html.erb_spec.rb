require 'rails_helper'

RSpec.describe "social_bodies/edit", type: :view do
  before(:each) do
    @social_body = assign(:social_body, SocialBody.create!(
      :name => "MyString",
      :role => 1,
      :position => "MyString"
    ))
  end

  it "renders the edit social_body form" do
    render

    assert_select "form[action=?][method=?]", social_body_path(@social_body), "post" do

      assert_select "input#social_body_name[name=?]", "social_body[name]"

      assert_select "input#social_body_role[name=?]", "social_body[role]"

      assert_select "input#social_body_position[name=?]", "social_body[position]"
    end
  end
end
