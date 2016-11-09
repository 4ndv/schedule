class Institute < ApplicationRecord
  has_many :groups
  has_many :lessons, through: :groups
  has_many :teachers, through: :lessons
end
