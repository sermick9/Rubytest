class Station
  attr_reader :name, :train

  def initialize(name)
    @name = name
    @train = []
  end

  def all_train(train)
    @train << train
  end

  def trains_type(type)
    @train.select { |trains| trains.type == type }
  end

  def train_departure(train)
    @train.delete(train)
  end
end

class Route
  attr_reader :stations
  def initialize(start_station, end_station)
    @start_station = start_station
    @end_station = end_station
    @stations = []
  end

  def starting_ending_station(start_station, end_station)
    @stations = [start_station, end_station]
  end

  def intermediate_station(station)
    @stations.insert(-2, station)
  end

  def remove_intermediate_station(station)
    @stations.delete(station) if @stations.include?(station)
  
  end

  def deduce_list(stations)
    for elements in @stations
      puts elements 
    end
  end
end

class Train
  attr_reader :number, :type, :number_cars, :speed

  def initialize(number, type, number_cars)
    @number = number
    @type = type
    @number_cars = number_cars   
  end

  def speed(speed)
    @speed = 0 
  end

  def pick_up_speed(speed)
    @speed = speed  
  end

  def brake_speed(speed)
    @speed = 0  
  end

  def return_number_wagons(number_cars)
    @number_cars = number_cars 
  end

  def increases_number_wagons(number_cars)
    @number_cars += 1 if @speed == 0  
  end

  def reduction_number_wagons(number_cars)
    @number_cars -= 1 if @speed == 0 && @number_cars > 0
  end

  def all_route(route)
    @route = route
    @route_assignment_index = 0
    @route_assignment = @route.stations.first
    @route_assignment.all_train(self)
  end

  def move_forward()
    return unless next_station
    @route_assignment.train_departure(self)
    @route_assignment_index += 1
    @route_assignment = @route.stations[@route_assignment_index]
    @route_assignment.all_train(self)
  end

  def move_backward()
    return unless previous_station
    @route_assignment.train_departure(self)
    @route_assignment_index -= 1
    @route_assignment = @route.stations[@route_assignment_index]
    @route_assignment.all_train(self)   
  end

  def previous_station()
    @route.stations[@route_assignment_index -1] if @route_assignment_index > 0
  
  end

  def next_stations()
    @route.stations[@route_assignment_index +1] if @route_assignment_index < @route.stations.length - 1
  end

  def current_station()
    @route.stations[@route_assignment_index] 
  end
end
