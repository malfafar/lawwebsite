require 'rails_helper'

RSpec.describe "laws/new", type: :view do
  before(:each) do
    assign(:law, Law.new(
      :url => "MyText",
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new law form" do
    render

    assert_select "form[action=?][method=?]", laws_path, "post" do

      assert_select "textarea#law_url[name=?]", "law[url]"

      assert_select "input#law_title[name=?]", "law[title]"

      assert_select "textarea#law_description[name=?]", "law[description]"
    end
  end
end
