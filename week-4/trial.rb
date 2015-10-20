puts 'What is your first name:'
first_name=gets.chomp
puts 'What is your middle name:'
middle_name=gets.chomp
puts 'What is your last name:'
last_name= gets.chomp

puts('Welcome to my program, '+ first_name +' '+ middle_name +' ' + last_name +' ')

puts 'What is your favourite number:'
fav_num=gets.chomp
add_num= fav_num.to_i + 1
puts  "Your favourite number should be #{add_num.to_s}."
