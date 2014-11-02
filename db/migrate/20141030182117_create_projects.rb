class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text     :name
      t.boolean  :in_progress

      t.timestamps
    end
  end
end
