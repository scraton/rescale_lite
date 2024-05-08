class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :company
      t.boolean :is_brand, default: true

      t.timestamps
    end
  end
end
