require './client.rb'
require './animal.rb'
require './main.rb'

class Shelter

	attr_accessor :animals, :clients
	
	def initialize(animals, clients)
		@clients = clients
		@animals = animals
	end

	def adopt(client, animal)
	end 

	def abandon(client, animal)
	end 

end 