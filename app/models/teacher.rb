class Teacher < ApplicationRecord
  has_many :items
  has_many :groups, through: :items
  has_many :lessons, through: :items

  validates_presence_of :name, message: 'ФИО не может быть пустым'

  def institutes
    self.groups.select('DISTINCT groups.institute_id').to_a.map(&:institute)
  end

  def to_s
    self.name
  end
end
