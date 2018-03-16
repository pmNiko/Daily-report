class Claim < ApplicationRecord
  #The class Claim has many responsables
  has_and_belongs_to_many :users
  has_and_belongs_to_many :teams
  #Return the responsables
  def responsibles
    @users = self.users
  end
  #Return true or false if contain only one responsable
  def only_one_responsible?
    self.responsibles.count == 1
  end

  def responsible_first
    return self.responsibles.first
  end

  def responsible_second
    return self.responsibles.second
  end

  def to_a?(team)
    team.there_any?(self)
  end

end
