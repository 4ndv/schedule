class Institute < ApplicationRecord
  has_many :groups
  has_many :lessons, through: :groups
  has_many :teachers, through: :lessons

  validates_presence_of :name, message: 'Имя не может быть пустым'
end
