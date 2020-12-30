class CLI

  def start
    puts "Hello, Welcome to Charities CLI".colorize(:green)
    puts zipcode   #greetings and direction
  end
  def zipcode
    puts "Please enter a Zip Code".colorize(:magenta)
    input = gets.strip.downcase
    if input == "exit"
      puts "Goodbye"
      exit
    elsif  input.length != 5 #|| input = ("a".."z").include?
      puts "Please enter a valid Zip Code".colorize(:red)   #if input != 
         return start
    else API.get_charities(input)
    Charity.all.each.with_index(1) do |c,index|
      puts "#{index} - #{c.name}".colorize(:cyan)
    end

      #end

    puts "Select Organization by Number".colorize(:magenta)       #ability to select organization to view url 
    index = gets.to_i
      # if input != (!Charity.all[index.nil?])
      #   puts "Please put one of the displayed numbers".colorize(:red)
      #return Charity.all.each.with_index(1) do |c,index|
        
        
        (!Charity.all[index].nil?)
        puts Charity.all[index - 1].name.colorize(:green)
        puts Charity.all[index - 1].city.colorize(:green)
        puts Charity.all[index - 1].state.colorize(:green)
        puts Charity.all[index - 1].url.colorize(:blue)
        puts Charity.all[index - 1].missionStatement
        puts Charity.all[index - 1].category.colorize(:green)
        
     
      end
     return zipcode
  end
#   def exit
#     if input == "exit"
#     puts "Goodbye"
#     exit
#   end
# end
end


