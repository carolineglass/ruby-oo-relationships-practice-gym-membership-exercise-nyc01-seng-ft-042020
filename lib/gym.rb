class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    Gym.all << self 
  end
  def self.all 
    @@all
  end 
  def memberships
    Membership.all.select {|memberships| memberships.gym == self}
  end 
  def lifters
    memberships.map {|memberships| memberships.lifter}
#     => [#<Lifter:0x00007fe5fcc3fd40 @lift_total=70, @name="caroline">,
#  #<Lifter:0x00007fe5fcc3fca0 @lift_total=30, @name="rachel">]
  end 
  def lifter_names
    lifters.map {|lifters| lifters.name}
  end
  def lift_total
    total_weight = 0
    lifters.each do |lifters| 
        total_weight = total_weight + lifters.lift_total
     end
     total_weight
  end
end

# **Gym**

#   - (Get a list of all gyms)

#   - (Get a list of all memberships at a specific gym)

#   - (Get a list of all the lifters that have a membership to a specific gym)

#   - (Get a list of the names of all lifters that have a membership to that gym)

#   - (Get the combined lift total of every lifter has a membership to that gym)