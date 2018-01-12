class CreateClaimsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :claims_users, id: false do |t|
      t.integer :claim_id
      t.integer :user_id
    end
  end
end
