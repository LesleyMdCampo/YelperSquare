class Restaurant < ActiveRecord::Base

	def snippet
		self.review.truncate(30)
	end

end
