class Group < ApplicationRecord
  belongs_to :institute
  
  has_many :items
  has_many :lessons, through: :items
  has_many :teachers, through: :items
end
