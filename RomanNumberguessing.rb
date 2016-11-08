puts 'Welcome to the number guessing game! '
puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Hello ' + name + '!  What a lovely name!'
puts 'How high do you want to guess?'
number = gets.chomp.to_i
secret = rand(1..number)
puts 'OK, now try and guess the secret number'
num_guesses = 0
loop do
print "What is your guess? "
guess = gets.chomp.to_i
num_guesses += 1

unless guess == secret
message = if guess > secret
"Too high"
else
"Too low"
end
puts message
else
puts "You got it!"
puts "It took you #{num_guesses} guesses."
exit
end
end
