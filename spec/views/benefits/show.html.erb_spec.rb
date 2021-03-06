require 'rails_helper'

RSpec.describe "benefits/show", type: :view do
  before(:each) do
    @benefit = assign(:benefit, Benefit.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
