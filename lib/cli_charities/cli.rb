class CLI 

  def start
    puts "Hello, Welcome to Charities CLI"
    puts "Please enter a Zip Code"
    input = gets.chomp
    API.get_charity(input)
    Charity.all.each.with_index(1) do |c,index|
      puts "#{index} - #{c.name}"
  end

  puts "Select with the name of the Organization"
  end
end