require 'wolf_on_commercial_street'

describe 'wolf' do
  it 'Base case: For [10,2,5,8,9,1,6,7,8,10] buy on 5, sell on 9' do
    stockprice = [10, 2, 5, 8, 9, 1, 6, 7, 8, 10]
    days = { buy_day: 5, sell_day: 9 }
    expect(wolf(stockprice)).to eq days
  end
  it 'Where best days are not highest days: For [7, 9, 7, 5, 8] buy on 3, sell on 4' do
    stockprice = [7, 9, 7, 5, 8]
    days = { buy_day: 3, sell_day: 4 }
    expect(wolf(stockprice)).to eq days
  end
  it 'Error handling: For [10,9,8,7,6,5,4,3,2,1] do not buy' do
    stockprice = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    days = { buy_day: nil, sell_day: nil }
    expect(wolf(stockprice)).to eq days
  end
end
