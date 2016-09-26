require 'rails_helper'

RSpec.describe "social_bodies/new", type: :view do
  before(:each) do
    assign(:social_body, SocialBody.new(
      :name => "MyString",
      :role => 1,
      :position => "MyString"
    ))
  end

  it "renders new social_body form" do
    render

    assert_select "form[action=?][method=?]", social_bodies_path, "post" do

      assert_select "input#social_body_name[name=?]", "social_body[name]"

      assert_select "input#social_body_role[name=?]", "social_body[role]"

      assert_select "input#social_body_position[name=?]", "social_body[position]"
    end
  end
end
