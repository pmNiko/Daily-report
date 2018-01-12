class Claim < ApplicationRecord
  has_and_belongs_to_many :users

  def responsables
    @users = self.users
  end
end
