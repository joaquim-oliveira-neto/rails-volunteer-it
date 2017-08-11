class RemovePhotoFromNgos < ActiveRecord::Migration[5.0]
  def change
    remove_column :ngos, :photo, :string
    remove_column :ngos, :email, :string
    remove_column :ngos, :password, :string
  end
end
