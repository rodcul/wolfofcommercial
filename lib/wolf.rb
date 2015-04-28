def wolf(stockprice)
  output = {}
  buy_sell_days = []
  profit = 0
  stockprice.each_with_index do |item1, index1|
    stockprice.each_with_index do |item2, index2|
      next if index2 < index1
      diff = item2 - item1
      if diff > profit
        profit = diff
        buy_sell_days = index1, index2
      end
    end
    output = { buy_day: buy_sell_days[0], sell_day: buy_sell_days[1] }
  end
  output
end
