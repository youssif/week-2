class Car
	attr_accessor :color, :gas, :total_mileage

	def initialize
		@total_mileage = 0
		puts "You have driven #{@total_mileage} miles."
		@gas = 30
		puts "You have #{@gas} gallons of gas left in the tank."
	end

	def change_color(newColor)
		@color = newColor
		puts "The new color is #{@color}."
	end

	def fill_gas(gallons)
		@gas = @gas + gallons
	end

	def drive(units)
		if @gas == 0
			puts "You can't drive anymore. You need to fill your tank!"

		elsif @gas - 0.5*units >= 0
			@total_mileage = @total_mileage + units
			@gas = @gas - 0.5*units
			puts "You have driven a total of #{@total_mileage} miles!"
			puts "There is #{@gas} gallons of gas left in the tank."

		elsif @gas - 0.5*units < 0
			x = 0
			until @gas == 0
				@total_mileage = @total_mileage+1
				@gas = @gas - 0.5
				x = x +1
			end
				puts "You were only able to drive #{x} miles."
				puts "You have driven a total of #{@total_mileage} miles!"
				puts "There is #{@gas} gallons of gas left in the tank."
				puts "You must fill gas to drive anymore."
			
		else puts "What the fuck?"
		end
		
	end

end