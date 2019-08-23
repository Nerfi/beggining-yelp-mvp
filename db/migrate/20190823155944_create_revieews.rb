class CreateRevieews < ActiveRecord::Migration[5.2]
  def change
    create_table :revieews do |t|
      t.text :content
      t.integer :rating
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
