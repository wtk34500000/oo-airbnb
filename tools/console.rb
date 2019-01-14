require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


la=Listing.new("LA")
ca=Listing.new("CA")
pa=Listing.new("PA")
tx=Listing.new("TX")

john=Guest.new("John")
lisa=Guest.new("Lisa")
ela=Guest.new("Ela")
alex=Guest.new("Alex")

trip1=Trip.new(john, la, 20)
trip2=Trip.new(lisa, la, 30)
trip3=Trip.new(ela, tx, 50)
trip4=Trip.new(alex, pa, 10)
trip5=Trip.new(john, ca, 20)

Listing.most_popular


# Put your variables here~!
binding.pry
