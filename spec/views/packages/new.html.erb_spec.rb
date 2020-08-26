require 'rails_helper'

RSpec.describe "packages/new", type: :view do
  before(:each) do
    assign(:package, Package.new(
      name: "MyString",
      guide_number: "MyString",
      status: "MyString",
      description: "MyString"
    ))
  end

  it "renders new package form" do
    render

    assert_select "form[action=?][method=?]", packages_path, "post" do

      assert_select "input[name=?]", "package[name]"

      assert_select "input[name=?]", "package[guide_number]"

      assert_select "input[name=?]", "package[status]"

      assert_select "input[name=?]", "package[description]"
    end
  end
end
