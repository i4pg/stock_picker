def stock_picker(days, arrays = [], result = [], max = 0)
  days.each_with_index do |day, index|
    days.each_with_index do |d, i|
      next unless i <= index

      arrays.push(day - d)
      if arrays.max <= max
        next
      elsif arrays.max == max
        result.push(i)
      else
        max = arrays.max
        result = [i, index]
      end
    end
  end
  p result
end
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
