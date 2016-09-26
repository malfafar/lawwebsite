require 'rails_helper'

RSpec.describe "benefits/new", type: :view do
  before(:each) do
    assign(:benefit, Benefit.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new benefit form" do
    render

    assert_select "form[action=?][method=?]", benefits_path, "post" do

      assert_select "input#benefit_title[name=?]", "benefit[title]"

      assert_select "textarea#benefit_description[name=?]", "benefit[description]"
    end
  end
end
