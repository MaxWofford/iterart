class AddAttachmentImageToArtworkIterations < ActiveRecord::Migration
  def self.up
    change_table :artwork_iterations do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :artwork_iterations, :image
  end
end
