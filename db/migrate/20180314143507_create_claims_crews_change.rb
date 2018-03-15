class CreateClaimsCrewsChange < ActiveRecord::Migration[5.1]
  def change
    create_table :claims_crews do |t|
      t.integer :claim_id
      t.integer :crew_id
    end
  end
end
