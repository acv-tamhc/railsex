require 'rails_helper'

RSpec.describe Image, type: :model do
	context 'Image' do
		# it 'validates the presence of headline' do
		# 	image = Image.new(headline: '')
		# 	image.validate
		# 	expect(image.errors.messages).to include(title: ["can't be blank"])
		# end

		# it { should validate_presence_of(:order) }

		# it 'validates the presence of picture' do
		# 	image = Image.new(picture: '')
		# 	image.validate
		# 	expect(image.errors.messages).to include(title: ["can't be blank"])
		# end

		# it 'validates the presence of number like' do
		# 	image = Image.new(like: '')
		# 	image.validate
		# 	expect(image.errors.messages).to include(title: ["value must large than 0"])
		# end

		# article bring 2 value, Image , text
		it { should validate_presence_of(:headline) }
		it { should validate_presence_of(:picture) }
		it { should validate_presence_of(:order) }
		it { should validate_presence_of(:like) }
	end
end