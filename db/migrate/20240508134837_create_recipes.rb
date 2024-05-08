class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :time_to_prepare_in_minutes

      t.timestamps
    end
  end
end
