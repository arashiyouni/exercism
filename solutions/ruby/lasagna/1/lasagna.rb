class Lasagna
  
  EXPECTED_MINUTES_IN_OVEN = 40
  
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    remaining = EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
    remaining.negative? ? 0 : remaining
  end

  def preparation_time_in_minutes(layers)
    layers * 2
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time = preparation_time_in_minutes(number_of_layers)
    preparation_time + actual_minutes_in_oven
  end
end

lasagna = Lasagna.new
lasagna.remaining_minutes_in_oven(30)
lasagna.preparation_time_in_minutes(2)
lasagna.total_time_in_minutes(
  number_of_layers: 3,
  actual_minutes_in_oven: 20
)
