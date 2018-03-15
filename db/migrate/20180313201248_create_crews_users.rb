class CreateCrewsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :crews_users, :id => false do |t|
      t.integer :crew_id
      t.integer :user_id
    end
  end
end
