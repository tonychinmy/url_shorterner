class Url < ApplicationRecord
	validates :long_url, format: { with: /https{0,1}:\/\/.*/,
    message: "must have http:" }
	def shorten
		self.short_url = SecureRandom.hex(5)
	end
end
