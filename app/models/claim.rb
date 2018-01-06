class Claim < ApplicationRecord
  has_many :responsables, class_name: 'User'        
end
