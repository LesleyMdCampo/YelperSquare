class Restaurant < ActiveRecord::Base

	def snippet
		self.review.truncate(40)
	end

end
