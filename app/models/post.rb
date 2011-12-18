class Post < ActiveRecord::Base

  self.per_page = 10

  default_scope order('date DESC')

  acts_as_taggable

  extend FriendlyId
  friendly_id :title, :use => :slugged

end
