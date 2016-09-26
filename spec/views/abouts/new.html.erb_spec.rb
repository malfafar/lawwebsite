require 'rails_helper'

RSpec.describe "abouts/new", type: :view do
  before(:each) do
    assign(:about, About.new(
      :objectives => "MyText",
      :statutes => "MyText",
      :social_bodies => "MyText",
      :message => "MyText"
    ))
  end

  it "renders new about form" do
    render

    assert_select "form[action=?][method=?]", about_path, "post" do

      assert_select "textarea#about_objectives[name=?]", "about[objectives]"

      assert_select "textarea#about_statutes[name=?]", "about[statutes]"

      assert_select "textarea#about_social_bodies[name=?]", "about[social_bodies]"

      assert_select "textarea#about_message[name=?]", "about[message]"
    end
  end
end
