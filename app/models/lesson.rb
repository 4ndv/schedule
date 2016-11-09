class Lesson < ApplicationRecord
  belongs_to :institute

  has_many :items
  has_many :teachers, through: :items
  has_many :groups, through: :items
end
