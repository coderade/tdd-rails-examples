require 'rails_helper'

RSpec.describe CoverImageUploader do
	it 'allows only images' do
		uploader = CoverImageUploader.new(Achievement.new, :cover_image)

		expect{
			File.open("#{Rails.root}/spec/fixtures/empty_pdf.pdf") do |f|
				uploader.store!(f)
			end
		}.to raise_exception(CarrierWave::IntegrityError)
	end
end