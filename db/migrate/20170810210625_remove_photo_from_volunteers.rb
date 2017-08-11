class RemovePhotoFromVolunteers < ActiveRecord::Migration[5.0]
  def change
    remove_column :volunteers, :photo, :string
    remove_column :volunteers, :email, :string
    remove_column :volunteers, :password, :string
  end
end
