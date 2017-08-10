class Motor < Tamirhane
	jsonb_accessor :motor,
    degisen_parca: :string,
    fiyat: :float,
    tamir_edilen_parca: :string,
    fiyat: :float,
    iscilik: :float

	def self
		self.motor
	end
end
