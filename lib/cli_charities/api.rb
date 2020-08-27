class API
  def self.get_charities(zipcode)
    #include HTTParty
    #base_uri = url
 # rescue
    key = "caa5b57e5c420e8a0cc13fdafca8e8b0"
    url = "http://data.orghunter.com/v1/charitysearch?user_key=caa5b57e5c420e8a0cc13fdafca8e8b0&zipCode=#{zipcode}"
    response = HTTParty.get(url)
    #hash = {
     # "name": ["charityName"]["Charity"]
    #}
    
    response ["data"].each do |c|
      
      #zipcode = c["zipcode"]
      charityName = c["charityName"]
      url = c["url"]
    Charity.new(charityName,url)
    
    end
   #response.new

  end
  
end