class CreateArtworkIterations < ActiveRecord::Migration
  def change
    create_table :artwork_iterations do |t|
      t.string :name
      t.text :description
      t.text :token
      # t.integer :user_id

      t.timestamps
    end
  end
end
