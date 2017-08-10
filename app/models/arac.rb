class Arac < Tamirhane
  jsonb_accessor :arac,
    plaka: :string,
    marka: :string,
    model: :string,
    yil: :integer

	def self
		self.arac
	end

end
