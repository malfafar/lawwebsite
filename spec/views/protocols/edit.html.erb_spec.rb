require 'rails_helper'

RSpec.describe "protocols/edit", type: :view do
  before(:each) do
    @protocol = assign(:protocol, Protocol.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit protocol form" do
    render

    assert_select "form[action=?][method=?]", protocol_path(@protocol), "post" do

      assert_select "input#protocol_name[name=?]", "protocol[name]"

      assert_select "textarea#protocol_description[name=?]", "protocol[description]"
    end
  end
end
