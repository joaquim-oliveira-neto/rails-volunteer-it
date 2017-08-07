class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :mini_description
      t.string :purpose
      t.string :skills
      t.boolean :remote
      t.references :ngo, foreign_key: true, index: true

      t.timestamps
    end
  end
end
