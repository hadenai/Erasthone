require 'byebug'
require 'prime'
require 'faker'

class NumberFirst
  def initialize(max_numbers)
    @max_numbers = max_numbers
    @numbers_prime = 2.step(@max_numbers).to_a
  end

  def calculated_list
    @numbers_prime.select do |numbers|
      Prime.prime?(numbers)
    end
  end
end
