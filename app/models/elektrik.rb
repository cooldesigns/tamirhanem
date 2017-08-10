class Elektrik < Tamirhane
 jsonb_accessor :elektrik,
    degisen_parca: :string,
    fiyat: :float

	def self
		self.elektrik
	end
	
end
