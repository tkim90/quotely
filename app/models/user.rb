class User < ApplicationRecord
  has_many :quotes
  has_many :comments

  validates :email, presence: true 
end
