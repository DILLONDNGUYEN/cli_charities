class CLI

  def start
    puts "Hello, Welcome to Charities CLI"   #greetings and direction
    puts "Please enter a Zip Code"
    input = gets.strip.downcase
      # if input != input.valid?
      #   return start
    API.get_charities(input)
    Charity.all.each.with_index(1) do |c,index|
      puts "#{index} - #{c.name}"
    end

      #end

    puts "Select Organization by Number"       #ability to select organization to view url 
     
    index = gets.to_i
      if (!Charity.all[index].nil?)
         
        puts Charity.all[index - 1].url
        puts Charity.all[index - 1].missionStatement
        puts Charity.all[index - 1].category
     
      end
    
  end
  #binding.pry
     
  


end