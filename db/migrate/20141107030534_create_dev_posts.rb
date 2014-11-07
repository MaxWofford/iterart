class CreateDevPosts < ActiveRecord::Migration
  def change
    create_table :dev_posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
