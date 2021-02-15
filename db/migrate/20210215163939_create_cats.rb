class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :age
      t.string :gender
      t.boolean :neutered
      t.string :description
      t.string :color
      t.string :diet
      t.string :hair_length
      t.string :breed
      t.integer :price_per_half_day
      t.string :city
      t.string :tag

      t.timestamps
    end
  end
end
