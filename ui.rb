require_relative "farm.rb"
require_relative "farmer.rb"

exit=false
behram= Farmer.new

while !exit
  puts "
  --------------------
  Options:
  field -> adds a new field
  harvest -> harvests crops and adds to total harvested
  status -> displays some information about the farm
  relax -> provides lovely descriptions of your fields
  exit -> exits the program
  --------------------"

  input=gets.chomp

  if input == "field"
    puts "What kind of field is it: corn or wheat?"
    type=gets.chomp
    if type== "corn" || type =="wheat"
      puts "How large is the field in hectares?"
      area=gets.chomp.to_i
      behram.addField(type,area)
      puts "Added a corn field of #{area} hectares!"
    else
      puts "error"
    end
  elsif input == "harvest"
    behram.harvest
  elsif input == "relax"
    behram.relax
  elsif input == "status"
    behram.status
  elsif input == "exit"
    exit=true
  else
    puts "incorrect input"
  end

end
