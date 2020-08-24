class CLI 

  def start
    puts "Hello, welcome to Charities CLI"
    puts "Please enter a Zip Code"
    input = gets.chomp
    API.get_charity(input)
    
  end
end