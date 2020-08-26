require 'rails_helper'

RSpec.describe "packages/index", type: :view do
  before(:each) do
    assign(:packages, [
      Package.create!(
        name: "Name",
        guide_number: "Guide Number",
        status: "Status",
        description: "Description"
      ),
      Package.create!(
        name: "Name",
        guide_number: "Guide Number",
        status: "Status",
        description: "Description"
      )
    ])
  end

  it "renders a list of packages" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Guide Number".to_s, count: 2
    assert_select "tr>td", text: "Status".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
