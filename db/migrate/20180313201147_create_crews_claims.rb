class CreateCrewsClaims < ActiveRecord::Migration[5.1]
  def change
    create_table :crews_claims, :id => false do |t|
      t.integer :crew_id
      t.integer :claim_id
    end
  end
end
