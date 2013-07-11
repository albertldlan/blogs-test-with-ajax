class Blog < ActiveRecord::Base
  attr_accessible :description, :name, :user_id
  has_many :owners, :dependent => :destroy
  has_many :posts, :dependent => :destroy
  has_many :users, through: :owners

  validates :name, :description, presence:true
end
