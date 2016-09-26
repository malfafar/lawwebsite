require 'rails_helper'

RSpec.describe "benefits/edit", type: :view do
  before(:each) do
    @benefit = assign(:benefit, Benefit.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit benefit form" do
    render

    assert_select "form[action=?][method=?]", benefit_path(@benefit), "post" do

      assert_select "input#benefit_title[name=?]", "benefit[title]"

      assert_select "textarea#benefit_description[name=?]", "benefit[description]"
    end
  end
end
