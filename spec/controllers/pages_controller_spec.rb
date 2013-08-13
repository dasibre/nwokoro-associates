require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'areas_of_practice'" do
    it "returns http success" do
      get 'areas_of_practice'
      response.should be_success
    end
  end

  describe "GET 'attorneys'" do
    it "returns http success" do
      get 'attorneys'
      response.should be_success
    end
  end

  describe "GET 'contact_us'" do
    it "returns http success" do
      get 'contact_us'
      response.should be_success
    end
  end

end
