require 'date'
require 'active_support'
require 'active_support/core_ext'

class Lesson1
  def sum(val = 0)
    val.to_s.split('').sum(&:to_i)
  end

  def age(birthday)
    birthday_date = Date.parse(birthday)
    age_in_days = (Date.today - birthday_date).to_i
    "Я живу #{age_in_days / 365} года или #{age_in_days} дней или " \
      "#{age_in_days * 24} часов или #{age_in_days * 24 * 60} минут " \
      "или #{age_in_days * 24 * 60 * 60} секунд"
  rescue ArgumentError, TypeError
    'Invalid Date Format'
  end

  def name
    prompt = ['Enter your Name: ',
              'Enter your Middle Name: ',
              'Enter your Family Name: ']
    full_name = ''
    (1..3).each do |i|
      print prompt[i - 1]
      input = gets.chomp
      full_name += input + ' '
    end
    "Hello #{full_name.rstrip}!"
  end
end
