#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

def stock_picker(stocks)
  best_profit = 0
  best_days = []

  for i in 0..stocks.length #inclusive range
    for j in i...stocks.length #exclusive range
      selling_price = stocks[j]
      profit = stocks[j] - stocks[i]

      if profit > best_profit
        best_profit = profit
        best_days = [i, j]
      end
    end
  end
  best_days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
# Expected output [1,4]  # for a profit of $15 - $3 == $12
