class CLI

  def start
    puts "Hello, Welcome to Charities CLI".colorize(:green)   #greetings and direction
    puts "Please enter a Zip Code".colorize(:magenta)
    input = gets.strip.downcase
      # if input != input.valid?
      #   return start
    API.get_charities(input)
    Charity.all.each.with_index(1) do |c,index|
      puts "#{index} - #{c.name}".colorize(:cyan)
    end

      #end

    puts "Select Organization by Number".colorize(:magenta)       #ability to select organization to view url 
     
    index = gets.to_i
      if (!Charity.all[index].nil?)

        puts Charity.all[index - 1].name.colorize(:green)
        puts Charity.all[index - 1].url.colorize(:blue)
        puts Charity.all[index - 1].missionStatement
        puts Charity.all[index - 1].category.colorize(:green)
     
      end
    
  end
  #binding.pry
     
  


end