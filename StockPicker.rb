class StockPicker
    def self.max_profit(arr)
        max_profit = 0
        min_price = arr[0]

        arr.each { |price|
            curr_profit = price - min_price
            max_profit = [curr_profit, max_profit].max
            min_price = [price, min_price].min
        }

        return max_profit
    end
end