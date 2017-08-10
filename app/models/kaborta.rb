class Kaborta < Tamirhane
	jsonb_accessor :kaborta,
    degisen_parca: :string,
    fiyat: :float,
    boyanan_parca: :string,
    iscilik: :float

	def self
		self.kaborta
	end
end
