require 'rails_helper'

RSpec.describe Text, type: :model do
	context 'Text' do
		it 'validates the presence of headline' do
			text = Text.new(headline: '')
			text.validate
			expect(text.errors.messages).to include(title: ["Can't be blank"])
		end

		it 'validates the presence of order show' do
			text = Text.new(order: '')
			text.validate
			expect(text.errors.messages).to include(title: ["Value must large than and equal 0"])
		end

		it 'validates the presence of sentence' do
			article = Text.new(sentence: '')
			article.validate
			expect(article.errors.messages).to include(title: ["Can't be blank"])
		end

		it 'validates the presence of number like' do
			article = Arcticle.new(like: '')
			article.validate
			expect(article.errors.messages).to include(title: ["Value must large than 0"])
		end
	end
end