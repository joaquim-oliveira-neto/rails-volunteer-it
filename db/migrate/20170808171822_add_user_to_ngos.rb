class AddUserToNgos < ActiveRecord::Migration[5.0]
  def change
    add_reference :ngos, :user, foreign_key: true
  end
end
