class Recipe < ApplicationRecord
	# Example for validation
	validate :description_longer_than_title


	def description_longer_than_title
		if dish.length > description.length
			errors.add(:Recipe, 'Title can not be longer than description')
		end
	end

	# Helper function for filtering
	def self.search(filter)
		# This is SQL syntax
		where("dish LIKE ? OR description LIKE ? OR ingredients LIKE ?", "%#{filter}%", "%#{filter}%", "%#{filter}%")
	end
end
