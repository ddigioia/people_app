class Person < ActiveRecord::Base

	def name
		return "#{self.first_name} #{self.last_name}"
	end

	# def last_name
	# 	return self.last_name
	# end

	def birth_date_string
		return self.birth_date.to_s
	end

	def have_a_drink
		# years_to_months = (Date.today.year - self.birth_date.year) * 12
		# age_in_months = 0
		# 	if Date.today.mon < self.birth_date.mon
		# 		num_months = (self.birth_date.mon - Date.today.mon)
		# 	end

		# age_in_months = (years_to_months - num_months)

		age = Date.today.year - self.birth_date.year


		if age >= 21 && self.drinks < 3
			self.drinks +=1
		elsif self.drinks >= 3
			return "Go home you're drunk"
		else
			return "Wait a few years"
		end

	end

	def drive_a_car
		age = Date.today.year - self.birth_date.year

		if age < 18 
			return "Not yet youngin"
		elsif age >= 18 && self.license == true && self.drinks >= 3
			return "Looks like a cab for you tonight"
		elsif age >= 18 && self.license == true
			return true
		end
	end

	def sober_up
		if self.drinks > 0
			self.drinks -=1
		else
			return true
		end
	end
				


end