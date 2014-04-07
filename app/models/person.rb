class Person < ActiveRecord::Base

	def first_name
		return self.first_name
	end

	def last_name
		return self.last_name
	end

	# def birth_date
	# 	return self.birth_date
	# end

end