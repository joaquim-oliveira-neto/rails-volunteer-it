class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.references :project, foreign_key: true
      t.references :volunteer, foreign_key: true
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
