require 'rails_helper'

RSpec.describe "chapters/show", type: :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :title => "MyText",
      :number => 1,
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
