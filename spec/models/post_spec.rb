require 'spec_helper'

describe Post do

  before :each do
    @post_first = Factory :post_first
    @post_second = Factory :post_second
  end

  it "should have 2 posts" do
    Post.count.should == 2
  end

  it "should defaultly scope by post date" do
    Post.all[0].title.should == 'Second Post'
    Post.all[1].title.should == 'First Post'
  end

  it "should generate a slug" do
    @post_first.slug.should == "first-post"
  end

end
