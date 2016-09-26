require 'rails_helper'

RSpec.describe "chapters/index", type: :view do
  before(:each) do
    assign(:chapters, [
      Chapter.create!(
        :title => "MyText",
        :number => 1,
        :text => "MyText"
      ),
      Chapter.create!(
        :title => "MyText",
        :number => 1,
        :text => "MyText"
      )
    ])
  end

  it "renders a list of chapters" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
