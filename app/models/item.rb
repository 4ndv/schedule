class Item < ApplicationRecord
  belongs_to :group
  belongs_to :lesson
  belongs_to :teacher

  validates_presence_of :lesson_id, message: 'Выберите предмет'
  validates_presence_of :teacher_id, message: 'Выберите преподавателя'
  validates_presence_of :position, message: 'Номер пары не может быть пустым'
  validates_presence_of :week_number, message: 'Номер недели не может быть пустым'
  validates_presence_of :day_number, message: 'День не может быть пустым'

  validates_numericality_of :position, only_integer: true, greater_than: 0, less_than: 20, message: 'Некорректный номер пары'
  validates_numericality_of :week_number, only_integer: true, greater_than: 0, less_than: 3, message: 'Некорректный номер недели'
  validates_numericality_of :day_number, only_integer: true, greater_than: 0, less_than: 8, message: 'Некорректный день недели'
end
