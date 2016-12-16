class Group < ApplicationRecord
  belongs_to :institute
  
  has_many :items
  has_many :lessons, through: :items
  has_many :teachers, through: :items

  validates_presence_of :number, message: 'Номер не может быть пустым'

  def schedule
    self.items.order(:position, :day_number).group_by(&:week_number)
  end
end
