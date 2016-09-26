require 'rails_helper'

RSpec.describe "fees/edit", type: :view do
  before(:each) do
    @fee = assign(:fee, Fee.create!(
      :value => "9.99",
      :name => "MyString"
    ))
  end

  it "renders the edit fee form" do
    render

    assert_select "form[action=?][method=?]", fee_path(@fee), "post" do

      assert_select "input#fee_value[name=?]", "fee[value]"

      assert_select "input#fee_name[name=?]", "fee[name]"
    end
  end
end
