class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :claims
  has_and_belongs_to_many :teams
  has_one :profile, :dependent => :destroy
  accepts_nested_attributes_for :profile

  after_create :create_profile

  def create_profile
    Profile.create(user: self)
  end
end
