
  class Charity
  @@all = []
  attr_accessor :name, :url, :missionStatement, :category, :state, :city
  def initialize(name, url, missionStatement, category, state, city)
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
  # def self.find_or_create(hash)
   
  #    #binding.pry
  #   x = @@all.map{|org| 
      
  #     org.name == hash[:name]
  #   }
  #    #in the all array there is an object with the hash[:name]    
  #   if x.length > 0
  #     return hash[:name] #return this charity if found
  #   else
  #     #binding.pry
  #     self.new hash[:name], hash[:url], hash[:missionStatement], hash[:category], hash[:state], hash[:city]     #create new charity passing each argument in order hash[:name], hash[:url], 
  #   end
  # end


