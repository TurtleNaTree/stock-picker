stock_prices = [17,3,6,9,15,8,6,1,10]


def stock_picker(stock_prices)
    best_price = [0,0]
    stock_prices.each_index { |index|
        sample_price = 0
        unless index + 1 == stock_prices.length             
            prices_to_check = stock_prices.slice(index + 1, stock_prices.length)
            prices_to_check.each_index { |sub_index| 
                find_price(prices_to_check[sub_index], stock_prices[index]) > find_price(best_price[1], best_price[0]) ? best_price = [stock_prices[index], prices_to_check[sub_index]] : best_price
            }      
        end
    }
    puts "The best choice is #{best_price} for a profit of #{best_price[1]} - #{best_price[0]} == #{best_price[1] - best_price[0]}"

end

def find_price(sell_price, buy_price)
    sell_price - buy_price
end

stock_picker(stock_prices)