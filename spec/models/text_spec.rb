require 'rails_helper'

RSpec.describe Text, type: :model do
	context 'Text' do
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