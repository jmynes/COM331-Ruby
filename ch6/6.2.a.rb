# 6.2.a

puts 'What would you like to say to IRATE_BOSS?'
your_reply = gets.chomp
puts 'WHADDYA MEAN "' + your_reply.upcase + '"?!? YOU\'RE FIRED!'

# Additional feature for fun!
if your_reply.downcase.eql?('nice tie')
	puts
	puts "...Oh, you just wanted to tell me about my tie? You get a raise!"
end	