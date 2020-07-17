
begin
  list_numbers = ARGV[0].to_i
  if list_numbers < 1
    raise ArgumentError, 'Argument sign is wrong'
  end
rescue ArgumentError => e
  puts "#{e.class} -> #{e.message}"
end
