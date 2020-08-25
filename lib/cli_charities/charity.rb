class Charity
  @@all = []

  attr_accessor :name, :url, :zipcode
  def initialize(name,url)

    @name = name
    @url = url
    @zipcode = zipcode
    @@all << self
  end

  def self.all
    @@all
  end

end