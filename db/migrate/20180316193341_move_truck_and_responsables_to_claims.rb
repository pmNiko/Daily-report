class MoveTruckAndResponsablesToClaims < ActiveRecord::Migration[5.1]
  def change
    teamP = Team.create!(
      date: Time.now,
      truck: 22
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
  end
end
