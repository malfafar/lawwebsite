require 'rails_helper'

RSpec.describe "slides/index", type: :view do
  before(:each) do
    assign(:slides, [
      Slide.create!(
        :title => "Title"
      ),
      Slide.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of slides" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
