require 'byebug'

class NumberFirst
  def initialize(list_numbers)
    @list_numbers = list_numbers
  end

  def calculated_list
    hash = {}
    numbers_first = ""
    (1..@list_numbers).each { |numbers| hash[numbers] = 'free' }
    hash.keys.each do |numbers|
      if (numbers / 2).is_a?(Integer) &&(numbers / 2) != 0
        numbers_first = numbers
      end
    end
    numbers_first
  end
end
