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

    describe "tags and pages" do

      before :each do
        5.times { FactoryGirl.create :post, :tag_list => "coding" }
        5.times { FactoryGirl.create :post, :tag_list => "cooking" }
      end

      it "should get only the posts tagged coding" do
        get :index, { :tags => 'coding' }
        assigns[:posts].count.should == 5
      end

      it "should only show 10 items per page" do
        visit '/journal'
        page.should have_selector('article h2', :count => 10)
      end

      it "should show the rest of the items on page 2" do
        visit '/journal'
        click_link '2' # go to page 2
        page.should have_selector('article h2', :count => 2)
      end

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

  describe "GET 'archive'" do

    it "should grab all posts" do
      25.times { Factory :post }
      get :archive
      assigns[:posts].count.should == 27
    end

  end

end
