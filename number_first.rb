# frozen_string_literal: true
require 'byebug'
require 'faker'
require_relative './number_first/number_first'
Dir[File.dirname(__FILE__) + '/errors/*.rb'].sort.each { |file| require file }

begin
  max_numbers = ARGV[0].to_i
  raise ArgumentSignError if max_numbers < 1
  raise ArgumentTooBigError if max_numbers > 100_000
  raise ArgumentTwoEarthError  if Faker::Space.planet == 'Earth'

  number_prime = NumberFirst.new(max_numbers)
  puts "Hey! did you know is the #{Faker::Space.planet} is the #{max_numbers} farthest planet from earth? Amazing!\n "
  puts number_prime.display_list
rescue ArgumentError => e
  puts "#{e.class} -> #{e.message}"
end
