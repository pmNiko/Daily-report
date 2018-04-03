class Team < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :claims, inverse_of: :teams
  accepts_nested_attributes_for :claims, reject_if: :all_blank, allow_destroy: true

  #incluye este usuario en su coleccion de usuarios
  def responsibles
    users
  end
  def date_format
    date.strftime("%d/%m/%Y")
  end
  def only_responsible?
    responsibles.count.eql?(1)
  end
  def first_responsible
    responsibles.first
  end
  def second_responsible
    responsibles.second
  end

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
    user_1 = claim.responsible_first

    if claim.only_one_responsible?
      unless include_user?(user_1)
        users << claim.responsible_first
      end
    else
      user_2 = claim.responsible_second

      unless include_user?(user_1) || include_user?(user_2)
        users << [claim.responsible_first, claim.responsible_second]
      end
    end
  end
  #Associa los responsables de cada reclamo para hacer reportes de historial
  #de cada reclamo en un futuro.
  def associated(quantity_users)
    #Por defecto trae en la colleccion un " " que agrega uno de mas. Al no estar
    #inserto en la BD no cuenta los responsables y deja sin efecto el metodo ya existente -> only_responsible?.
    quantity_users -=1
    claims.each do |claim|
      unless quantity_users.eql?(1)
        claim.add_responsible(second_responsible)
      end
      claim.add_responsible(first_responsible)
    end
  end
end
