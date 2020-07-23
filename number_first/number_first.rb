require 'byebug'
require 'faker'

class NumberFirst
  def initialize(max_numbers)
    @max_numbers = max_numbers
    @numbers_prime = 2.step(@max_numbers).to_a
  end

  def is_prime?(max_numbers)
    n = 2
    while n < max_numbers
      return false if max_numbers % n == 0
      n += 1
    end
    true
  end

  def calculated_list
    @numbers_prime.select do |numbers|
      is_prime?(numbers)
    end
  end
end
