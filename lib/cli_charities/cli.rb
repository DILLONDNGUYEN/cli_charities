class CLI

  def start
    puts "Hello, Welcome to Charities CLI".colorize(:green)
    puts location   #greetings and direction
  end

def get_input
  input = gets.strip.downcase
  if input =="exit"
    puts "Goodbye".colorize(:red)
    exit
  elsif input == "back"
    self.location
  end
  return input.to_i
end

  def get_charities(input)
    API.get_charities(input) #instantiate objects in the api class method
  end

  def display_charities
    #binding.pry
    Charity.all.each.with_index(1) do |c,index|
      puts "#{index} - #{c.name}".colorize(:cyan)
     
    end
  end

def location
    puts "Please enter a Zip Code or exit".colorize(:magenta)
    input = get_input    
    input_validation(input) 
    Charity.all.clear    
    get_charities(input)
    #binding.pry
    display_charities
    self.org
  end
  
    
def org
    puts "Select Organization by Number, Enter back to enter a new Zipcode, or exit to exit".colorize(:magenta)     #ability to select organization to view url 
    index = get_input - 1
    
       if !index.between?(1, Charity.all.length - 1) #OR (1..Charity.all.length).include?(index)
        #binding.pry       
        display_charities
        puts "Please try again".colorize(:red)
        sleep(1)
         
      else
        #(!Charity.all[index].nil?)
        puts Charity.all[index ].name.colorize(:green)
        puts Charity.all[index ].city.colorize(:green)
        puts Charity.all[index ].state.colorize(:green)
        puts Charity.all[index ].url.colorize(:blue)
        puts Charity.all[index ].missionStatement
        puts Charity.all[index ].category.colorize(:green)
      end
     self.org
  end
  
  def input_validation (input)   
    if input.to_s.length != 5 && "abcdefghijklmnopqrstuvwxyz".split('').any?
      puts "Please enter a valid Zip Code".colorize(:red)   
      self.location   
    end
  end
end


  


#end


