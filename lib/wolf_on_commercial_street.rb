def wolf(stockprice)
  output = { buy_day: nil, sell_day: nil }
  profit = 0
  stockprice.each_with_index do |item1, index1|
    stockprice.each_with_index do |item2, index2|
      if index2 > index1 && (item2 - item1) > profit
        profit = item2 - item1
        output = { buy_day: index1, sell_day: index2 }
      end
    end
  end
  output
end
