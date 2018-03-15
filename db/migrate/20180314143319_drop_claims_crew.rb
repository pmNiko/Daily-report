class DropClaimsCrew < ActiveRecord::Migration[5.1]
  def change
    drop_table :claims_crews
  end
end
