require 'wolf'

describe 'wolf' do


  it 'For [10,2,5,8,9,1,6,7,8,10] buy on 5, sell on 9' do
    stockprice = [10,2,5,8,9,1,6,7,8,10]
    days = { buy_day: 5, sell_day: 9 }
    expect(wolf(stockprice)).to eq days
  end
  
end
