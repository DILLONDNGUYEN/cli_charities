class Charity
  @@all = []

  attr_accessor :name, :url, :missionStatement, :category
  def initialize(name,url,missionStatement,category)
    
    @name = name
    @url = url
    @missionStatement = missionStatement
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

end