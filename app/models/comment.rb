class Comment < ActiveRecord::Base
  belongs_to :artwork_iteration
  belongs_to :user
  validates  :body, presence: true
  validates  :user_id, presence: true
  validates  :artwork_iteration_id, presence: true
end
