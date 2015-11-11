class AddUserIdtoLicenses < ActiveRecord::Migration
  def change
    add_column :licenses, :user_id, :integer
    add_index :licenses, :user_id
  end
end
