require 'rails_helper'

RSpec.describe "abouts/edit", type: :view do
  before(:each) do
    @about = assign(:about, About.create!(
      :objectives => "MyText",
      :statutes => "MyText",
      :social_bodies => "MyText",
      :message => "MyText"
    ))
  end

  it "renders the edit about form" do
    render

    assert_select "form[action=?][method=?]", about_path(@about), "post" do

      assert_select "textarea#about_objectives[name=?]", "about[objectives]"

      assert_select "textarea#about_statutes[name=?]", "about[statutes]"

      assert_select "textarea#about_social_bodies[name=?]", "about[social_bodies]"

      assert_select "textarea#about_message[name=?]", "about[message]"
    end
  end
end
