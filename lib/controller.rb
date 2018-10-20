require 'view'
require 'gossip'

class Controller
	def initialize
		 @view = View.new 
	end
	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params.keys[0], params.values[0])
		gossip.save
	end

	def index_gossip
		list = Gossip.content
		@view.index_gossip(list.to_h)
	end
end