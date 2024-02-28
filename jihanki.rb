class vendingMachine
  def initialize
    
  end
end

class money < vendingMachine

end

class drink < vendingMachine
  def initialize
    @juices = [{name: "コーラ", price: 150, stock: 5},
               {name: "水", price: 100, stock: 5},
               {name: "モンスターエナジー", price: 210, stock: 5}
              ]
  end
end

vendingMachine = vendingMachine.new
money = money.new
drink = drink.new
