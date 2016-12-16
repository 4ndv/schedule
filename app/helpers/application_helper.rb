module ApplicationHelper
  def days_options(selected)
    options_for_select [
      ['Понедельник', 1],
      ['Вторник', 2],
      ['Среда', 3],
      ['Четверг', 4],
      ['Пятница', 5],
      ['Суббота', 6],
      ['Воскресенье', 7]
    ], selected: selected
  end

  def week_options(selected)
    options_for_select [
      ['Нечетная', 1],
      ['Четная', 2]
    ], selected: selected
  end

  def day_by_number number
    days = [
      [1, 'Понедельник'],
      [2, 'Вторник'],
      [3, 'Среда'],
      [4, 'Четверг'],
      [5, 'Пятница'],
      [6, 'Суббота'],
      [7, 'Воскресенье']
    ]

    days.detect {|v| v[0] == number}[1]
  end

  def week_by_number number
    return "Четная" if number % 2 == 0
    return "Нечетная"
  end
end
