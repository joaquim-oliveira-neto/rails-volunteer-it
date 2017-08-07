class CreateNgos < ActiveRecord::Migration[5.0]
  def change
    create_table :ngos do |t|
      t.string :name
      t.string :responsible
      t.text :mini_description
      t.text :full_description
      t.integer :phone
      t.string :address
      t.string :purpose
      t.string :website
      t.string :facebook
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
