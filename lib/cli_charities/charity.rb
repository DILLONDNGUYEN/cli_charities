class Charity
  @@all = []

  attr_accessor :name, :url, :missionStatement, :category, :state, :city
  def initialize(name,url,missionStatement,category,state,city)
    
    @name = name
    @url = url
    @missionStatement = missionStatement
    @category = category
    @state = state
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

end