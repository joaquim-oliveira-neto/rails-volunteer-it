class AddPhotoAgainToVolunteer < ActiveRecord::Migration[5.0]
  def change
    add_column :volunteers, :photo, :string
  end
end
