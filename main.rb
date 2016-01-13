require './client.rb'
require './animal.rb'
#require './shelter.rb'
require 'pry'

#to store objects
animalsArray = []
clientsArray = []

#to create new animal with user input
def inputNewAnimal(animalsArray)
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
		animalsArray.push(newAnimal)
		return animalsArray
end

#create new client from user input
def inputNewClient(clientsArray)
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
		clientsArray.push(newClient)
		return clientsArray
end

#test cases - new objects pushed to arrays
client1 = Client.new('patty', 3, 56, 2)
client2 = Client.new('betty davis', 4, 22, 3)
animal1 = Animal.new('Felix', 2, 'M', 'cat', ['ball', 'string'])
animal2 = Animal.new('Lassie', 6, 'F', 'dog', ['frisbee', 'bone'])
animalsArray.push(animal1, animal2)
clientsArray.push(client1, client2)

selection = "0"
while selection != "5"
	#main menu
	puts 'Welcome to the animal shelter. What would you like to do?'
	puts '1 - Add new animal'
	puts '2 - Add new client'
	puts '3 - Print animals DB'
	puts '4 - Print clients DB'
	puts '5 - Exit'
	case selection
		when "1"
			inputNewAnimal(animalsArray)
		when "2"
			inputNewClient(clientsArray)
		when "3"
			animalsArray.each do |animal|
		  	puts "#{animal.name}  #{animal.age}  #{animal.gender}  #{animal.species}"
			end 
		when "4"
			clientsArray.each do |client|
		  	puts "#{client.name}  #{client.no_of_children}  #{client.age}  #{client.no_of_pets}"
			end
		end
		selection = gets.chomp
end 

binding.pry