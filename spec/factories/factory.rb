require 'date'

FactoryGirl.define do

  factory :post_first, :class => :post do |p|
    p.title 'First Post'
    p.content 'Hey, this is my first post.'
    p.date Date.new(2011, 5, 5)
  end

  factory :post_second, :class => :post do |p|
    p.title 'Second Post'
    p.content 'Hey, this is my second post!'
    p.date Date.new(2011, 5, 7)
  end

end
