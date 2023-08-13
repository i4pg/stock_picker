# frozen_string_literal: true

def stock_picker(week)
  profit = 0
  best_day = [0, 0]
  week.each_with_index do |buy, index|
    week[index + 1..].each do |sell|
      next unless sell - buy > profit

      profit = sell - buy
      best_day = sell, buy
    end
  end
  best_day
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
