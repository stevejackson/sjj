require 'spec_helper'

describe BlogController do
  render_views

  before :each do
    @post1 = Factory :post_first
    @post2 = Factory :post_second
  end

  describe "GET 'index'" do

    it "should grab all posts" do
      get :index

      assigns[:posts].count.should == 2
    end

  end

  describe "GET 'show'" do

    it "should get a post" do
      get :show, :id => 'first-post'
      assigns[:post].title.should == 'First Post'
    end

    it "should allow me to visit a blog post by its slug" do
      visit '/blog/first-post'
      page.should have_content('First Post')
    end

    it "should allow me to visit a post by /journal route" do
      visit '/journal/first-post'
      page.should have_content('First Post')
    end

  end

end
