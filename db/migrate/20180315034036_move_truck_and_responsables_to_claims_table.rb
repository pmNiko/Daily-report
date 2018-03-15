class MoveTruckAndResponsablesToClaimsTable < ActiveRecord::Migration[5.1]
  def change
    Claim.find_each do |claim|
      Crew.find_each do |crew|
        if crew.contain?(claim)
          crew.add(claim)
        else
          crew.create_and_add(claim)
        end
      end
    end
  end
end
