require './client.rb'
require './animal.rb'

class Shelter
	attr_accessor :animalsArray, :clientsArray
	
	def initialize(animalsArray, clientsArray)
		@clientsArray = clientsArray
		@animalsArray = animalsArray
	end

	#to create new animal with user input
	def inputNewAnimal
			puts 'enter the new animal name:'
			name = gets.chomp
			puts 'enter age: '
			age = gets.chomp
			age = age.to_i
			puts 'enter gender: '
			gender = gets.chomp
			puts 'enter species: '
			species = gets.chomp
			puts 'enter toys (separated by a space): '
			toys = gets.chomp
			toys = toys.split(' ')

			newAnimal = Animal.new(name, age, gender, species, toys)
			@animalsArray.push(newAnimal)
	end

	#create new client from user input
	def inputNewClient
			puts 'enter the new client name:'
			name = gets.chomp
			puts 'enter number of children: '
			no_of_children = gets.chomp
			no_of_children = no_of_children.to_i
			puts 'enter age: '
			age = gets.chomp
			age = age.to_i
			puts 'enter number of other pets: '
			no_of_pets = gets.chomp
			no_of_pets = no_of_pets.to_i

			newClient = Client.new(name, no_of_children, age, no_of_pets)
			@clientsArray.push(newClient)
	end

	def printAnimals
		@animalsArray.each do |animal|
		  puts "#{animal.name}  #{animal.age}  #{animal.gender}  #{animal.species}"
		end 	
	end 

	def printClients
		@clientsArray.each do |client|
		  	puts "#{client.name}  #{client.no_of_children}  #{client.age}  #{client.no_of_pets}"
		end 
	end

	def adopt(client, animal)
	end 

	def abandon(client, animal)
	end 



end





