class Client
	
	attr_accessor :name, :no_of_children, :age, :no_of_pets
	
	def initialize(name, no_of_children, age, no_of_pets)
		@name = name
		@no_of_children = no_of_children
		@age = age
		@no_of_pets = no_of_pets
	end
end
