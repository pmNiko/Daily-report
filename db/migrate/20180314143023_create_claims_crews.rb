class CreateClaimsCrews < ActiveRecord::Migration[5.1]
  def change
    create_table :claims_crews do |t|
      t.integer :user_id
      t.integer :crew_id
    end
  end
end
