class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :artwork_iterations
  has_many :comments

  validates :username, presence: true
  validates :username, uniqueness: true, if: -> { self.username.present? }
  validates :username, length: { minimum: 5, maximum: 20 }
end
