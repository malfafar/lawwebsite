require 'rails_helper'

RSpec.describe "laws/show", type: :view do
  before(:each) do
    @law = assign(:law, Law.create!(
      :url => "MyText",
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
