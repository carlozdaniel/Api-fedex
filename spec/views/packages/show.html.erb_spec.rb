require 'rails_helper'

RSpec.describe "packages/show", type: :view do
  before(:each) do
    @package = assign(:package, Package.create!(
      name: "Name",
      guide_number: "Guide Number",
      status: "Status",
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Guide Number/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Description/)
  end
end
