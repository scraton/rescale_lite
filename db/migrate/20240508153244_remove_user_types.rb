class RemoveUserTypes < ActiveRecord::Migration[7.1]
  def change
    drop_table :brand_users
    drop_table :coman_users
  end
end
