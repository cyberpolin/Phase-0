# Create a Car Class from User Stories

  # As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.
  # As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
  # As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
  # As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
  # As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.
  # As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
  # As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
  # As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.

# I worked on this challenge [by myself, with: ].


# 2. Pseudocode

# Create a Car class
  # create initialize method with color and model as arguments
    # Start instance variable for color and for model
    # Start a speed instance variable
    # Start direction instance variable to north
    # Start total distance instance variable

  # Create a method to define distance to drive

  # Create a method to turn thath accept right or left as parameter
    # IF parameter to rigth got from north to west
    # ELSE it is to left go from north to east

  # Create a method to change speed it will accept a parameter

  # Create a method to log every move on the car
# 3. Initial Solution

class Car
  attr_reader :total_distance, :log, :facing

  def initialize(color, model)
    @color = color
    @model = model
    @speed = 0
    @direction = ["North", "East", "South", "West"]
    @direction_index = 0
    @facing = @direction[0]
    @total_distance = 0
    @log = []

    log("You just buy a #{@color} car #{@model}, #{@total_distance} Miles. Go and drive it it is facing #{@facing} on main street.")
  end

  def drive(distance)
    @total_distance += distance
    change_speed(0) # Whe arriving given distance stop
    log("New distance: #{distance}")
  end

  def turn(direction)
    if direction == "right"
      @direction_index += 1
      @direction_index = 0 if @direction_index < @direction.length
      @facing = @direction[@direction_index] # fix the limit !!!
    else
      @direction_index -= 1
      @direction_index = 4 if @direction_index > @direction.length
      @facing = @direction[@direction_index]

    end
    log("Your car is facing: #{@facing}")
  end

  def change_speed(new_speed)
    @speed = new_speed
    log("New speed #{new_speed}")
  end

  def log(action)
    puts action
    @log.push(action)
  end
end


# 4. Refactored Solution





# 1. DRIVER TESTS GO BELOW THIS LINE

mini  = Car.new("red", "mini")
mini.drive(3)
p mini.total_distance # 3
p mini.facing
mini.turn("left")
mini.turn("left")
mini.turn("left")
mini.turn("left")
mini.turn("left")







# 5. Reflection