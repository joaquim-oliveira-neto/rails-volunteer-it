class RemoveSkillsFromProject < ActiveRecord::Migration[5.0]
  def change
    remove_column :projects, :purpose, :string
  end
end
