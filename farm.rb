class Farm
  @@foodTotal=0
  @@fields= []

  def initialize
    @foodLvl=1
    @currentField = {}
    @type
    @area
  end

#reader
  def foodTotal
    return @@foodTotal
  end

  def fields
    return @@fields
  end

  def areaCurrent
    return @currentField[:fieldArea]
  end

  def currentField
    return @currentField
  end

  #writer
  def foodTotal=(foodTotal)
    return @@foodTotal=foodTotal
  end

  def fields=(fields)
    return @@fields=fields
  end

  def addField(type,area)
    @type = type
    @area=area
    current={}
    current[:fieldType]=type
    current[:fieldArea]=area

    if type == "corn"
      @foodLvl=20
    else
      @foodLvl=30
    end
    
    current[:foodHectare]=@foodLvl
    @@fields.push(current)
  end


end


##############

# myFarm = Farm.new
# myFarm.addField("corn", 100)
# myFarm.addField("wheat", 200)
#
# p myFarm.harvest
