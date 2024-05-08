class CreateIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredients do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :name
      t.decimal :quantity
      t.integer :units
      t.text :notes

      t.timestamps
    end
  end
end
