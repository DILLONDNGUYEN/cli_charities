class CLI

  def start
    puts "Hello, Welcome to Charities CLI"   #greetings and direction
    puts "Please enter a Zip Code or City"
    input = gets.strip.downcase
    API.get_charities(input)
    Charity.all.each.with_index(1) do |c,index|
      puts "#{index} - #{c.name}"
    
      end

      puts "Select Organization by Number"
     #ability to select organization to view url or description
    index = gets.to_i
    # index = gets.to_i
      #start.new.select {|selection|}
      if (!Charity.all[index].nil?)
         puts Charity.all[index - 1].url
  
      end
    #charity_info.new     

    #select
    #puts "#{index} - #{c.name}"
  end
  #binding.pry
     
  


end