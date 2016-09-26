require 'rails_helper'

RSpec.describe "abouts/show", type: :view do
  before(:each) do
    @about = assign(:about, About.create!(
      :objectives => "MyText",
      :statutes => "MyText",
      :social_bodies => "MyText",
      :message => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
