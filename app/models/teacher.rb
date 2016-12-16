class Teacher < ApplicationRecord
  has_many :items
  has_many :groups, through: :items
  has_many :lessons, through: :items

  validates_presence_of :name, message: 'ФИО не может быть пустым'
end
