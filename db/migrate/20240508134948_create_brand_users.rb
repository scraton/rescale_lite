class CreateBrandUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :brand_users do |t|
      t.string :email
      t.string :name
      t.string :company

      t.timestamps
    end
  end
end
