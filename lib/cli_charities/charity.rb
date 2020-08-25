class Charity
  @@all = []

  attr_accessor :name, :url, :zipcode, :city
  def initialize(name,url,zipcode,city)

    @name = name
    @url = url
    @zipcode = zipcode
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

end