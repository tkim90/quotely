class Quote < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :body, presence: true 
  validates :author, presence: true 
  validates :user_id, presence: true 
end
