class Crew < ApplicationRecord
  has_and_belongs_to_many :claims
  has_and_belongs_to_many :users

  def contain?(claim)
    @user_1 = claim.responsible_first
    if claim.only_one_responsible?
      self.exists?(@user_1.id) && self.exists?({truck: claim.truck})
    else
      @user_2 = claim.responsible_second
      self.exists?(@user_1.id) && self.exists?(@user_2.id) && self.exists?({truck: claim.truck})
    end
  end

  def add(claim)
    if claim.only_one_responsible
      :users =>[claim.responsible_first]
    else
      :users =>[claim.responsible_first, claim.responsible_second]
    end
    :claims =>[claim]
  end

  def create_and_add(claim)
    crew = Crew.create!(
      date: Time.now.strftime("%d-%m-%Y"),
      truck: claim.truck
    )
    crew.add(claim)
  end

end
