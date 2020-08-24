class API
  def self.get_charity(zipcode)

    key = "caa5b57e5c420e8a0cc13fdafca8e8b0"
    url = "http://data.orghunter.com/v1/charitysearch?user_key=caa5b57e5c420e8a0cc13fdafca8e8b0"
    reponse = HTTParty.get(url)
  
end