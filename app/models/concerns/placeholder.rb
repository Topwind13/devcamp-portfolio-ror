module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(height:, width:) #ใส่ : ตามท้าย ไม่งั้น error
		"https://via.placeholder.com/#{height}x#{width}"
	end
end