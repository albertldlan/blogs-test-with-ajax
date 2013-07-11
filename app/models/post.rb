class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :blog
  has_many :messages, :dependent => :destroy
  attr_accessible :content, :title, :user_id, :blog_id
  validates :content, :title, presence:true
end
