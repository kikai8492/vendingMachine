class VendingMachine

  def money
    @slotMoney = 0
    @money = [10,50,100,1000]
  end

  def juice
    @juices = [{name: "コーラ", price: 150, stock: 5},
               {name: "水", price: 100, stock: 5},
               {name: "モンスターエナジー", price: 210, stock: 5}
              ]
  end

  def slotMoney
    puts "自販機へようこそ"
    while true
      puts "お金を投入してください"
      money = gets.to_i
      if @money.include?(money)
        @slotMoney = @slotMoney + money
      else
        puts "10円玉、50円玉、100円玉、500円玉、1000円札以外は使用できません。#{money}円を返金します。"
        exit
      end
      puts "現在の金額は#{@slotMoney}円です。投入金額は以上ですか？"
      puts "以上です：1"
      puts "追加する：2"
      puts "払い戻す：3"
      
      while true
        select = gets.chomp.to_i
        if select === 1

        elsif select === 2
        
        elsif select === 3

        else
          puts "1~3を選択してください"
          false
        end
      end
    end
  end
end

vendingMachine = VendingMachine.new
vendingMachine.money
vendingMachine.juice
vendingMachine.slotMoney