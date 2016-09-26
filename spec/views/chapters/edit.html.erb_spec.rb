require 'rails_helper'

RSpec.describe "chapters/edit", type: :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :title => "MyText",
      :number => 1,
      :text => "MyText"
    ))
  end

  it "renders the edit chapter form" do
    render

    assert_select "form[action=?][method=?]", chapter_path(@chapter), "post" do

      assert_select "textarea#chapter_title[name=?]", "chapter[title]"

      assert_select "input#chapter_number[name=?]", "chapter[number]"

      assert_select "textarea#chapter_text[name=?]", "chapter[text]"
    end
  end
end
