class Group < ApplicationRecord
  belongs_to :institute
  
  has_many :items
  has_many :lessons, through: :items
  has_many :teachers, through: :items

  validates_presence_of :number, message: 'Номер не может быть пустым'

  def schedule
    self.items.order(day_number: :asc, position: :asc).group_by(&:week_number)
  end

  def lessons_and_their_teachers
    les = {}

    self.lessons.each do |elem|
      les[elem] = self.items.where(lesson: elem).select('distinct items.teacher_id').map(&:teacher)
    end

    les
  end

  def teachers_and_their_lessons
    teac = {}

    self.teachers.each do |elem|
      teac[elem] = self.items.where(teacher: elem).select('distinct items.lesson_id').map(&:lesson)
    end

    teac
  end

  def to_s
    self.number
  end
end
