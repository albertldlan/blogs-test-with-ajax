class Owner < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  attr_accessible :user_id, :blog_id
end
