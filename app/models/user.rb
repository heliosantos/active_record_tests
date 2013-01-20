class User < ActiveRecord::Base
  attr_accessible :name
  has_many :microposts
  has_many :offspring, class_name: 'User', foreign_key: 'parent_id', dependent: :destroy
  belongs_to :ascendent, class_name: 'User'
end
