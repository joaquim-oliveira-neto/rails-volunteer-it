class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :mini_description
      t.string :purpose
      t.string :skills
      t.boolean :remote
      t.integer :ong_id

      t.timestamps
    end
  end
end
