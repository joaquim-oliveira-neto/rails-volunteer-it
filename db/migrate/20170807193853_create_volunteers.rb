class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :e_mail
      t.string :password
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
