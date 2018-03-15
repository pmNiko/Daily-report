class Team < ApplicationRecord
  has_and_belongs_to_many :claims
  has_and_belongs_to_many :users

  def include_user?(user)
    self.users.includes?(user)
  end

  def corresponds_this?(claim)
    user_1 = claim.responsible_first

    if claim.only_one_responsible?
      include_user?(user_1) && truck.eql?(claim.truck)
    else
      user_2 = claim.responsible_second
      include_user?(user_1) && include_user?(user_2) && truck.eql?(claim.truck)
    end
  end

  def add_user_of(claim)
    if claim.only_one_responsible?
      users << claim.responsible_first
    else
      users << [claim.responsible_first, claim.responsible_second]
    end
  end

end
