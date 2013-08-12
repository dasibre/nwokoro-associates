require 'spec_helper'

describe "AttorneyPages" do
  describe "Attorneys index page" do
    it "it shows the attorneys index page" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get attorneys_path
      expect(response).to render_template(:index)
      # response.status.should be(200)
    end
  end
end
