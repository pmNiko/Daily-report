class CreateTeamsUsersAndClaimsTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :claims_teams, :id => false do |t|
      t.integer :claim_id
      t.integer :team_id
    end

    create_table :teams_users, :id => false do |t|
      t.integer :team_id
      t.integer :user_id
    end
  end
end
