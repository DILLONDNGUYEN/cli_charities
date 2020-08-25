class CLI 

  def start
    puts "Hello, Welcome to Charities CLI"   #greetings and direction
    puts "Please enter a Zip Code or City"
    input = gets.chomp.downcase
    API.get_charity(input)
    Charity.all.each.with_index(1) do |c,index|
      puts "#{index} - #{c.name}"
  end

  puts "Select with the name of the Organization"
  end
end