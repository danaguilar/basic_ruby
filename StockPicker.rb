def stock_picker(array) #Return an array of two with position 0 being the buy day and position 1 being the sell day
  difference = 0
  sell_day = -1
  buy_day = -1
  array.each_index do |index|
    days_after = array[index+1..array.length]

    days_after.each_index do |sell_index|
      try_difference = days_after[sell_index] - array[index]
      if try_difference > difference
        difference = try_difference
        sell_day = sell_index + index + 1
        buy_day = index
      end
    end

  end
  puts "The highest stock price found was #{difference}"
  return [buy_day,sell_day]
end


stock_picker([17,3,6,9,15,8,6,1,10])
