class Profile < ApplicationRecord
  belongs_to :user
  has_many :phones, inverse_of: :profile
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true
end
