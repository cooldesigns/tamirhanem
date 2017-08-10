class Tamirhane < ApplicationRecord
	enum status: [:tamire_baslanmadi, :tamirde, :tamir_edildi]

	def self
		self.slice(:id, :status, :usta)
	end
end
