require 'rails_helper'

RSpec.describe Image, type: :model do
	context 'Image' do
		it 'validates the presence of headline' do
			image = Image.new(headline: '')
			image.validate
			expect(image.errors.messages).to include(title: ["Can't be blank"])
		end

		it 'validates the presence of order show' do
			image = Image.new(order: '')
			image.validate
			expect(image.errors.messages).to include(title: ["Value must large than and equal 0"])
		end

		it 'validates the presence of picture' do
			image = Image.new(picture: '')
			image.validate
			expect(image.errors.messages).to include(title: ["Can't be blank"])
		end

		it 'validates the presence of number like' do
			article = Image.new(like: '')
			article.validate
			expect(article.errors.messages).to include(title: ["Value must large than 0"])
		end

		# article bring 2 value, Image , text
		
	end
end