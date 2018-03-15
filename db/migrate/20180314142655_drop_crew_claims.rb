class DropCrewClaims < ActiveRecord::Migration[5.1]
  def change
    drop_table :crews_claims
  end
end
