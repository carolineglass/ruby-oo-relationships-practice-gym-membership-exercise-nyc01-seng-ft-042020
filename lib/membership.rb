class Membership
  attr_reader :cost
  attr_accessor :gym, :lifter
  @@all = []
  # membership is given a cost and cost can't be changed 
  def initialize(cost, gym, lifter)
    @cost = cost
    @gym = gym 
    @lifter = lifter
    Membership.all << self
  end
  def self.all 
    @@all
  end
end


# **Membership**

#   - (Get a list of all memberships)