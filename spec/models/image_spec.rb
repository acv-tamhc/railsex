require 'rails_helper'

RSpec.describe Image, type: :model do
	context 'Image' do
		it { should validate_presence_of(:headline) }
		#it { should validate_presence_of(:picture) }
		it { should validate_presence_of(:order) }
		it { should validate_presence_of(:like) }

		it 'Inscrease number of like' do
			image = Image.new(headline: 'Image 01', like: 1, order: 1)
			image.save!
			expect(image.inscrease).to eq 2
		end
	end
end