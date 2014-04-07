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

	# def 

	# end

end