require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :name => "MyString",
      :description => "MyText",
      :author => "MyString",
      :category => 1
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_name[name=?]", "job[name]"

      assert_select "textarea#job_description[name=?]", "job[description]"

      assert_select "input#job_author[name=?]", "job[author]"

      assert_select "input#job_category[name=?]", "job[category]"
    end
  end
end
