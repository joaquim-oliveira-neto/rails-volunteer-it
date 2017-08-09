class AddSkillsToNgos < ActiveRecord::Migration[5.0]
  def change
    add_column :ngos, :skills, :string
  end
end
