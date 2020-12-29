class API
  def self.get_charities(zipcode)
    key = "caa5b57e5c420e8a0cc13fdafca8e8b0"
    url = "http://data.orghunter.com/v1/charitysearch?user_key=caa5b57e5c420e8a0cc13fdafca8e8b0&zipCode=#{zipcode}"
    response = HTTParty.get(url)
    response ["data"].each do |c|

      category = c["category"]
      missionStatement = c["missionStatement"]
      charityName = c["charityName"]
      url = c["url"]
    Charity.new(charityName,url,missionStatement,category)
   
    end
  end
end