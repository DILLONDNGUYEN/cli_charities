class API
  def self.get_charity(zipcode)
  #rescue
    key = "caa5b57e5c420e8a0cc13fdafca8e8b0"
    url = "http://data.orghunter.com/v1/charitysearch?user_key=caa5b57e5c420e8a0cc13fdafca8e8b0&searchTerm={keyword}&city={city}&state={state}&zipCode={zipcode}"
    response = HTTParty.get(url)
    response["url"]["keyword"]["city"]["state"]["zipcode"].each do |c|
      zipcode = c["zipcode"]
      name = c["name"]
      url = c["url"]
    Charity.new(name,url,city)
    
    end
   

  end
  
end