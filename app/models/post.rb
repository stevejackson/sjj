class Post < ActiveRecord::Base

  default_scope order('date desc')

  extend FriendlyId
  friendly_id :title, :use => :slugged

end
