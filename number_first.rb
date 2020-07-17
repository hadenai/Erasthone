Dir[File.dirname(__FILE__) + '/errors/*.rb'].each{ |file| require file }

begin
  list_numbers = ARGV[0].to_i
  if list_numbers < 1
    raise ArgumentSignError
  end
rescue ArgumentError => e
  puts "#{e.class} -> #{e.message}"
end
