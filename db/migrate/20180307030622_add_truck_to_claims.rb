class AddTruckToClaims < ActiveRecord::Migration[5.1]
  def change
    add_column :claims, :truck, :integer
  end
end
