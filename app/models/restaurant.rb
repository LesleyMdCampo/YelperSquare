class Restaurant < ActiveRecord::Base

	def snippet
		self.review.truncate(30)
	end

	def rating
		rand(1..5)
	end

end
