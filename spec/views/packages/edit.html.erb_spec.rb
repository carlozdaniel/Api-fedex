require 'rails_helper'

RSpec.describe "packages/edit", type: :view do
  before(:each) do
    @package = assign(:package, Package.create!(
      name: "MyString",
      guide_number: "MyString",
      status: "MyString",
      description: "MyString"
    ))
  end

  it "renders the edit package form" do
    render

    assert_select "form[action=?][method=?]", package_path(@package), "post" do

      assert_select "input[name=?]", "package[name]"

      assert_select "input[name=?]", "package[guide_number]"

      assert_select "input[name=?]", "package[status]"

      assert_select "input[name=?]", "package[description]"
    end
  end
end
