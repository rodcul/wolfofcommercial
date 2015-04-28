def wolf(stockprice)
  output = {}
  array = []
  diff = 0
  stockprice.each_with_index do |item1,index1|
    stockprice.each_with_index do |item2,index2|

      n = 0
      if index2 > index1
        n = item2-item1
      if n > diff
        diff = n
        array = index1,index2
      end
    end


    end
    output[:buy_day] = array[0]
    output[:sell_day] = array[1]
  end
  output
end
