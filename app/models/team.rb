class Team < ApplicationRecord

  has_and_belongs_to_many :claims
  has_and_belongs_to_many :users
  accepts_nested_attributes_for :claims, :allow_destroy => true

  #incluye este usuario en su coleccion de usuarios
  def include_user?(user)
    self.users.include?(user)
  end

  #Te corresponde este reclamo
  def corresponds_this?(claim)
    user_1 = claim.responsible_first

    if claim.only_one_responsible?
      include_user?(user_1) && truck.eql?(claim.truck)
    else
      user_2 = claim.responsible_second
      include_user?(user_1) && include_user?(user_2) && truck.eql?(claim.truck)
    end
  end

  #Equipo hay alguno que contenga este reclamo
  def there_any?(claim)
    Team.all.each do |team|
      if team.corresponds_this?(claim)
        return true
        break
      end
    end
    return false
  end

  #Agrega el usuario a su colleccion
  def add_user_of(claim)
    if claim.only_one_responsible?
      users << claim.responsible_first
    else
      users << [claim.responsible_first, claim.responsible_second]
    end
  end

end
