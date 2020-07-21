require_relative './number_first/number_first'
Dir[File.dirname(__FILE__) + '/errors/*.rb'].each{ |file| require file }

begin
  max_numbers = ARGV[0].to_i
  if max_numbers < 1
    raise ArgumentSignError
  end
  if max_numbers > 100000
    raise ArgumentTooBigError
  end

    number_prime = NumberFirst.new(max_numbers)
    puts ((number_prime.calculated_list*"").to_i)
rescue ArgumentError => e
  puts "#{e.class} -> #{e.message}"
end
