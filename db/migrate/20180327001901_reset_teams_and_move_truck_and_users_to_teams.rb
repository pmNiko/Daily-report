class ResetTeamsAndMoveTruckAndUsersToTeams < ActiveRecord::Migration[5.1]
  def change
    #Reset Teams
    Team.all.destroy_all

    #Team test
    Team.create!(
      date: Time.now,
      truck: 0
    )

    Claim.all.each do |claim|
      Team.all.each do |team|
        if team.corresponds_this?(claim)
          team.claims << claim
          team.add_user_of(claim)
        elsif !claim.to_a?(team)
          team = Team.new(
            date: Time.now,
            truck: claim.truck,
            :claims => [claim]
          )
          team.save!
          team.add_user_of(claim)
        else
          #nothing
        end
      end
    end

    # team test delete
    Team.first.destroy
  end
end
