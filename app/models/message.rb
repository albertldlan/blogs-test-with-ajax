class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  attr_accessible :message, :post_id, :user_id
  validates :message, presence:true
end
