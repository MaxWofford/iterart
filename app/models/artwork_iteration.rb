class ArtworkIteration < ActiveRecord::Base
  include Tokenable
  belongs_to :user
  belongs_to :project
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

  before_create :create_default_project, unless: :project_id

  def create_default_project
    self.create_project(user_id: user_id)
  end
end
