require './client.rb'
require './animal.rb'
require './shelter.rb'
require 'pry'

#to store objects - test cases are done in main first
animalsArray = []
clientsArray = []

#test cases - new objects pushed straight to above arrays
client1 = Client.new('patty', 3, 56, 2)
client2 = Client.new('betty davis', 4, 22, 3)
animal1 = Animal.new('Felix', 2, 'M', 'cat', ['ball', 'string'])
animal2 = Animal.new('Lassie', 6, 'F', 'dog', ['frisbee', 'bone'])
animalsArray.push(animal1, animal2)
clientsArray.push(client1, client2)

#new shelter object, pas both arrays in
fancyShelter = Shelter.new(animalsArray, clientsArray)

#main menu
selection = "0"
while selection != "7"
	#main menu
	puts 'Welcome to the animal shelter. What would you like to do?'
	puts '1 - Add new animal'
	puts '2 - Add new client'
	puts '3 - Print animals database'
	puts '4 - Print clients database'
	puts '5 - Enter an adoption'
	puts '6 - Enter an abandoned pet'
	puts '7 - Exit'
	case selection
		when "1"
			fancyShelter.inputNewAnimal
		when "2"
			fancyShelter.inputNewClient
		when "3"
			fancyShelter.printAnimals
		when "4"
			fancyShelter.printClients 
		when "5"
			fancyShelter.adoptPet
		when "6"
			fancyShelter.abandonPet
	end
		selection = gets.chomp
end 

binding.pry