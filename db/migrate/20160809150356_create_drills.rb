class CreateDrills < ActiveRecord::Migration[5.0]
  def change
    create_table :drills do |t|
      t.string :name, :null => false
      t.string :image_url, :null => false
      t.string :description, :null => false
      t.references :category, index: true, foreign_key: true
      t.timestamps
    end
  end
end
