class Claim < ApplicationRecord
  #The class Claim has many responsables
  has_and_belongs_to_many :users
  has_and_belongs_to_many :teams
  attr_accessor :ticket, :client
  #Return the responsables
  def responsibles
    @users = users
  end
  #Return true or false if contain only one responsable
  def only_one_responsible?
    responsibles.count == 1
  end
  #responsable number first
  def responsible_first
    responsibles.first
  end
  #responsible number two
  def responsible_second
    responsibles.second
  end
  #Reclamo pertenece a algun equipo
  def to_a?(team)
    team.there_any?(self)
  end

end
