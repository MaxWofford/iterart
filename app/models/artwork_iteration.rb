class ArtworkIteration < ActiveRecord::Base
  include Tokenable
  belongs_to :user
  has_many :comments
  has_attached_file :image, styles: { square: "300x300#", thumb: "-gravity center -crop '200x200+0+0'" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
