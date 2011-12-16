require 'spec_helper'

describe BlogController do

  before :each do
    @post1 = Factory :post_first
    @post2 = Factory :post_second
  end

  describe "GET 'index'" do

    it "should be successful" do
      get 'index'
      response.should be_success
    end

    it "should grab all posts" do
      get :index

      assigns[:posts].count.should == 2
    end

  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end

    it "should allow me to visit a blog post by its slug" do
      nil.should == 5 
    end

  end

end
