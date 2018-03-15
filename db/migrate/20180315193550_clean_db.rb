class CleanDb < ActiveRecord::Migration[5.1]
  def change
    drop_table :claims_crews
    drop_table :crews_users
    drop_table :crews
  end
end
