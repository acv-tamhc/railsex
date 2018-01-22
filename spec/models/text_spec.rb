require 'rails_helper'

RSpec.describe Text, type: :model do
	context 'Text' do
		# it 'validates the presence of headline' do
		# 	text = Text.new(headline: '')
		# 	text.validate
		# 	expect(text.errors.messages).to include(title: ["can't be blank"])
		# end

		# it 'validates the presence of order show' do
		# 	text = Text.new(order: '')
		# 	text.validate
		# 	expect(text.errors.messages).to include(title: ["value must large than and equal 0"])
		# end

		# it 'validates the presence of sentence' do
		# 	article = Text.new(sentence: '')
		# 	article.validate
		# 	expect(article.errors.messages).to include(title: ["can't be blank"])
		# end

		# it 'validates the presence of number like' do
		# 	text = Text.new(like: '')
		# 	text.validate
		# 	expect(text.errors.messages).to include(title: ["value must large than 0"])
		# end

		it { should validate_presence_of(:headline) }
		it { should validate_presence_of(:sentence) }
		it { should validate_presence_of(:order) }
		it { should validate_presence_of(:like) }

		it 'Increase number like of text' do
			text = Text.new(headline: 'Text 01', sentence: 'sentence 01', order: 1, like: 1)
			text.save!
			expect(text.inscrease_like).to eq 2
		end
	end
end