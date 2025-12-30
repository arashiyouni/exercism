class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagon_ids)
    wagon_ids
  end

  def self.fix_list_of_wagons(wagons, missing_wagons)
     # Step 1: Remove first two wagons
    first_two = wagons.shift(2)
    # Step 2: Remove locomotive
    wagons.delete(1)
    # Step 3: Build correct order
    [1, *missing_wagons, *wagons, *first_two]
  end

  def self.add_missing_stops(route, **stops)
     route.merge(stops: stops.values)
  end

  def self.extend_route_information(route, more_route_information)
    route.merge(more_route_information)
  end
end
