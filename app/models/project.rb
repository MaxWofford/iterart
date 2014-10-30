class Project < ActiveRecord::Base
  has_many :artwork_iterations
  belongs_to :user
end
