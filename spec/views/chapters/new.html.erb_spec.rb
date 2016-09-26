require 'rails_helper'

RSpec.describe "chapters/new", type: :view do
  before(:each) do
    assign(:chapter, Chapter.new(
      :title => "MyText",
      :number => 1,
      :text => "MyText"
    ))
  end

  it "renders new chapter form" do
    render

    assert_select "form[action=?][method=?]", chapters_path, "post" do

      assert_select "textarea#chapter_title[name=?]", "chapter[title]"

      assert_select "input#chapter_number[name=?]", "chapter[number]"

      assert_select "textarea#chapter_text[name=?]", "chapter[text]"
    end
  end
end
