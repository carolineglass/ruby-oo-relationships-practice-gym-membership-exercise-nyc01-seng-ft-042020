class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end
  def self.all 
    @@all 
  end 
  def memberships
    Membership.all.select {|memberships| memberships.lifter == self}
  end 
#   => [#<Membership:0x00007f9c94986ad8
#   @cost=30,
#   @gym=#<Gym:0x00007f9c94986ba0 @name="Planet Fitness">,
#   @lifter=#<Lifter:0x00007f9c94986bf0 @lift_total=30, @name="rachel">>,
#  #<Membership:0x00007f9c94986ab0
#   @cost=60,
#   @gym=#<Gym:0x00007f9c94986b50 @name="Crunch">,
#   @lifter=#<Lifter:0x00007f9c94986bf0 @lift_total=30, @name="rachel">>]

  def gyms 
    memberships.map {|memberships| memberships.gym}
  end
  def self.avg_lift
    all_lifters_total = 0
    all_lifts = Lifter.all.map {|lifters| lifters.lift_total}
      all_lifts.each do |weight|
        all_lifters_total = all_lifters_total + weight
      end
      all_lifters_total / (all_lifts.count)
  end 
  def all_costs 
    total = 0
    memberships.each do |membership| 
      total = total + membership.cost
    end
    total
  end 
  def new_membership(cost, gym)
    Membership.new(cost, gym, self)
  end 
end


# **Lifter**

#   - (Get a list of all lifters)

#   - (Get a list of all the memberships that a specific lifter has)

#   - (Get a list of all the gyms that a specific lifter has memberships to)

#   - (Get the average lift total of all lifters)

#   - (Get the total cost of a specific lifter's gym memberships)

#   - (Given a gym and a membership cost, sign a specific lifter up for a new gym)