require 'rails_helper'

RSpec.describe "laws/edit", type: :view do
  before(:each) do
    @law = assign(:law, Law.create!(
      :url => "MyText",
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit law form" do
    render

    assert_select "form[action=?][method=?]", law_path(@law), "post" do

      assert_select "textarea#law_url[name=?]", "law[url]"

      assert_select "input#law_title[name=?]", "law[title]"

      assert_select "textarea#law_description[name=?]", "law[description]"
    end
  end
end
