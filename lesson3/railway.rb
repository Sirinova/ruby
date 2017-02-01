class Train
	attr_reader :number, :type, :railcars, :route
	attr_accessor :speed, :index_station
  def initialize(number, type, railcars)
  	@number = number
  	@type = type
  	@railcars = railcars
  	@speed = 0
  end

  def current_speed
    puts "Текущая скорость: #{self.speed}"
  end

  def stop
  	self.speed = 0
  end

  def railcars
  	puts "Количество вагонов: #{self.railcars}"
  end

  def add_railcars
  	self.railcars += 1 if self.speed == 0
  end

  def remove_railcrs
  	self.railcars -= 1 if self.speed == 0 && self.railcars > 0
  end

  def route=(route)
  	@route = route
  	@index_station = 0
  	self.route.stations[self.index_station].add_train(self)  	
  end

  def move_train
  	if self.index_station == self.route.stations.size-1
  		self.index_station = 0
  		self.route.stations.reverse!
  	else
  		current_station = self.route.stations[self.index_station]
  		current_station.delete.train(self)
  		self.index_station += 1
  		current_station = self.route.stations[self.index_station]
  		current_station.add_train(self)
  	
  end

  def show_previous_station
  	if self.index_station == 0
  		puts "Это первая станция."
  	else
			puts "Предыдущая станция: #{self.route.stations[self.index_station-1].name}"
		end  	
  end

  def show_current_station
  	puts "Текущая станция: #{self.rout.stations[self.index_station].name}"
  end

  def show_next_station
  	if self.index_station == self.route.stations.size-1
  		puts "Это конечнЫая станция."
  	else
  		puts "Следущая станция: #{self.route.stations[self.index_station+1].name}"  	
  end
end

class Station
	attr_reader :name, :list_train
  def initialize(name)
    @name = name 
    @list_train = [] 	
  end

  def add_train(train)
  	self.list_train << train
  end

  def show_trains
  	print "Поезда на станции: "
  	self.list_train.each{ |t| puts t.number }
  end

  def show_type
  	cargo_count = 0
  	passenger_count = 0
  	self.list_train.each do |t|
  		if t.type == "cargo"
  			cargo_count += 1
  		else
  			passenger_count += 1
  		end
  	end
  	puts "Грузовых поездов: #{cargo_count}, пассажирских поездов: #{passenger_count}."
  end

  def remove_train(train)
  	if self.list_train.include?(train)
 			self.list_train.delete(train)
		else
			puts "Поезд не найден."
		end
  end
end

class Route
	attr_reader :start_station, :final_station, :stations
  def initialize(start_station, final_station)
  	@start_station = start_station
  	@final_station = final_station
  	@stations = [start_station, final_station]
  end

  def add_station(station)
  	self.stations.insert(-2, station)
  end

  def remove_station(station)
  	if self.stations.include?(station) && station.list_train.empty?
  		self.stations.delete(station)
  	else
			puts "Станция не найдена."  			
		end
  end

  def show_stations
  	self.stations.each { |st| puts st.name }
  end
 end

