 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/packages", type: :request do
  # Package. As you add validations to Package, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Package.create! valid_attributes
      get packages_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      package = Package.create! valid_attributes
      get package_url(package)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_package_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      package = Package.create! valid_attributes
      get edit_package_url(package)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Package" do
        expect {
          post packages_url, params: { package: valid_attributes }
        }.to change(Package, :count).by(1)
      end

      it "redirects to the created package" do
        post packages_url, params: { package: valid_attributes }
        expect(response).to redirect_to(package_url(Package.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Package" do
        expect {
          post packages_url, params: { package: invalid_attributes }
        }.to change(Package, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post packages_url, params: { package: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested package" do
        package = Package.create! valid_attributes
        patch package_url(package), params: { package: new_attributes }
        package.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the package" do
        package = Package.create! valid_attributes
        patch package_url(package), params: { package: new_attributes }
        package.reload
        expect(response).to redirect_to(package_url(package))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        package = Package.create! valid_attributes
        patch package_url(package), params: { package: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested package" do
      package = Package.create! valid_attributes
      expect {
        delete package_url(package)
      }.to change(Package, :count).by(-1)
    end

    it "redirects to the packages list" do
      package = Package.create! valid_attributes
      delete package_url(package)
      expect(response).to redirect_to(packages_url)
    end
  end
end
