require 'spec_helper'

describe "requirements/edit" do
  before(:each) do
    @requirement = assign(:requirement, stub_model(Requirement,
      :description => "MyString",
      :points => 1
    ))
  end

  it "renders the edit requirement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => requirements_path(@requirement), :method => "post" do
      assert_select "input#requirement_description", :name => "requirement[description]"
      assert_select "input#requirement_points", :name => "requirement[points]"
    end
  end
end