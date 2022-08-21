stock_prices = [17,3,6,9,15,8,6,1,10]


def stock_picker(stock_prices)
    best_price = false
    stock_prices.each_index { |index|
        puts "#{index} #{stock_prices[index]}"
    }
end

def find_price(sell_price, buy_price)
    buy_price - sell_price
end

stock_picker(stock_prices)