require_relative "farm.rb"

class Farmer

  def initialize
    @myFarm = Farm.new
  end

  def harvest
    temp_food=0
    (@myFarm.fields).each do |field|
      temp_food= field[:foodHectare]*field[:fieldArea]
      @myFarm.foodTotal+=temp_food
      field[:foodHectare]=0
    end
    status
    return @myFarm.foodTotal
  end

  def addField(type,area)
    @myFarm.addField(type, area)
  end

  def relax
    (@myFarm.fields).each do |hash|
        if hash[:fieldType] == "corn"
          puts "#{hash[:fieldArea]} hectares of tall green stalks rustling in the breeze fill your horizon."
        end
        if hash[:fieldType] == "wheat"
          puts "The sun hangs low, casting an orange glow on a sea of #{hash[:fieldArea]} hectares of wheat."
        end
    end
  end

  def status
    (@myFarm.fields).each do |hash|
        if hash[:fieldType] == "corn"
          puts "Corn field is #{hash[:fieldArea]} hectares."
        end
        if hash[:fieldType] == "wheat"
          puts "Wheat field is #{hash[:fieldArea]} hectares."
        end
    end
    puts "The farm has #{@myFarm.foodTotal} harvested so far"
  end


end

##################
# behram = Farmer.new
#
# behram.harvest
# behram.status
# puts
# behram.addField
# behram.harvest
# puts
# behram.relax
# behram.status
# puts
# behram.harvest
# behram.status
