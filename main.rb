require 'pry'
require 'rainbow'

classnames = ['Adi', 'Alex', 'Anthony', 'Ben', 'Brian', 'Bryan', 'Eric', 'Jane', 'Jeff', 'Jillian', 'Joe', 'Matt', 'Nick', 'Nicky', 'Ron', 'Ryan', 'Sandip', 'Sean', 'Shefali', 'Simon', 'Stephen']
classnames = classnames.shuffle

puts `clear`
puts "Lab Partners".color("#ffffff")
print "What size group would you like?"

group_size = gets.chomp.to_i
number_of_groups = classnames.count / group_size

puts `clear`
number_of_groups.times do |group_number|
  puts  "\n\n Group #{group_number} : "
  print "#{classnames.pop(group_size).join(', ')}"
end
puts ", #{classnames.join(', ')}\n\n".color("#33cc00") if classnames.any?
puts "good luck with your project!"