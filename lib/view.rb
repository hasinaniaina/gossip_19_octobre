class View
	def create_gossip
		puts "vous vous appelez comment?"
		authors = gets.chomp
		puts "maintenant entrer votre potins"
		contents = gets.chomp
		return {authors => contents }
	end

	def index_gossip(param)
		param.each{|author, gossip|
			puts "#{author}: #{gossip}"
		}
	end
end