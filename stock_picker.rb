def stock_picker (prices)
  # variables to track buy day, sell day and max profit
  buy_day = 0
  sell_day = 0
  max_profit = 0

  # Iterate through all days as potential buys days
  prices.each_with_index do |buy_price, buy_day_index|
    # Iterate through future days as potential sell days
    prices[buy_day_index..-1].each_with_index do |sell_price, sell_day_index|
      # calculate potential profit
      profit = sell_price - buy_price
      # If the potential profit is higher than current max profit
      if profit > max_profit
        # Update the maximum profit
        max_profit = profit
        # Update the best day to buy
        buy_day = buy_day_index
        # Update the best day to sell
        sell_day = buy_day_index + sell_day_index
      end
    end
  end
  [buy_day, sell_day]
end


print stock_picker([17,3,6,9,15,8,6,1,10])  # Expected Output: [1, 4]
print stock_picker([12,10,5,15,9,18,20,7,8])  # Expected Output: [2, 6]
print stock_picker([22,16,19,11,14,25,8,12,20])  # Expected Output: [3, 5]
print stock_picker([24,19,21,22,15,16,18,3,25])  # Expected Output: [7, 8]


