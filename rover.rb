class Rover
	attr_accessor :x, :y, :direction
	def initialize(x = 0, y = 0, direction = "N")
		@x = x
		@y = y
		@direction = direction
	end

	def to_s  # This is so that it prints
		"(#{@x}, #{@y}) #{@direction}"  #
	end

	def set_launch_position(location)
		position = location.split("")
		@x = position[0].to_i  #to_i means, to the integer, meaning x = 0 and y =0, as above
		@y = position[1].to_i
		@direction = position[2]
	end

	def read_instructions(instructions)
		instructions.split("").each do |x|
			if x == "M"
				move
			elsif x == 'L' || x == 'R'
				turn(x)
			end
		end
	end

	def  turn(t)
		if t == "L"
			if @direction == "N"
				@direction = "W"
			elsif @direction == "W"
				@direction = "S"
			elsif @direction == "E"
				@direction = "N"
			elsif @direction == "S"
				@direction = "E"
			else
				raise "Bad direction"
			end

		

		elsif t == "R"
			if @direction == "N"
				@direction = "E"
			elsif @direction == "W"
				@direction = "N"
			elsif @direction == "E"
				@direction = "S"
			elsif @direction == "S"
				@direction = "W"
			else
				raise "Bad direction"
			end
		end
	end

	def move 
		if @direction =="N"
			@y +=1
		elsif @direction == "W"
			@x -=1
		elsif @direction == "E"
			@x +=1
		elsif @direction == "S"
			@y -=1

		end
	end

end

	

crawler = Rover.new

puts "Input location in the desired format 'XYD'"

crawler_location = gets.chomp

puts "Input instructions"

crawler_command = gets.chomp

crawler.set_launch_position(crawler_location)
crawler.read_instructions(crawler_command)

puts crawler




			


			




		     


# 	end

# 	def move

# 	end

# 	def turn(direction)


# 	end
# end