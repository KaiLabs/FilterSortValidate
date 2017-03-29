class Recipe < ApplicationRecord
	###    VALIDATION   ###	
	# Random validation to show how it works
	# validate 'name of function defined below'
	validate :description_longer_than_title

	# Function to describe what to validate
	def description_longer_than_title
		if dish.length > description.length
			#errors.add(:Model, 'Error message')
			# The message will be displayed when validation triggers an error
			# You can modify the red ugly popup error message if you use this
			errors.add(:Recipe, 'Title can not be longer than description')
		end
	end
	

	###    FILTERING   ###
	# Helper function for filtering
	def self.search(filter)
		# This is SQL syntax
		# if you need help with SQL syntax, I can help
		where("dish LIKE ? OR description LIKE ? OR ingredients LIKE ?", "%#{filter}%", "%#{filter}%", "%#{filter}%")
	end
end
