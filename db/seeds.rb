# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

require 'date'

for i in 1..15 do
  Post.create! title: "Post #{i}",
    content: "My post content for #{i}",
    slug: "post-#{i}",
    date: DateTime.now
end
