class AddUserIdToArtworkIterations < ActiveRecord::Migration
  def change
    add_column :artwork_iterations, :user_id, :integer
    add_index :artwork_iterations, :user_id
  end
end
