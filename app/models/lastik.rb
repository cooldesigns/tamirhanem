class Lastik < Tamirhane
	jsonb_accessor :lastik,
    degisen_lastik: :string,
    adet: :integer,
    fiyat: :float

	def self
		self.lastik
	end
end
