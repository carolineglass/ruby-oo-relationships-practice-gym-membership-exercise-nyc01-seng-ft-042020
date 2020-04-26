# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("caroline", 70)
lifter2 = Lifter.new("paul", 200)
lifter3 = Lifter.new("rachel", 30)
gym1 = Gym.new("Planet Fitness")
gym2 = Gym.new("Crunch")
membership1 = Membership.new(100, gym2, lifter2)
membership2 = Membership.new(15, gym1, lifter1)
membership3 = Membership.new(30, gym1, lifter3)
membership4 = Membership.new(60, gym2, lifter3)

binding.pry

puts "Gains!"
