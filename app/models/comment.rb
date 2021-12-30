class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :quote

  validates :body, presence: true 
  validates :user_id, presence: true 
end
