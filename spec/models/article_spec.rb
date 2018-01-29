require 'rails_helper'

RSpec.describe Article, type: :model do
	let!(:article)  { create(:article) }
	context 'Article' do
		it { should validate_presence_of(:title) }
		it { should validate_presence_of(:description) }
		it { should validate_presence_of(:published_at) }

		it { should validate_presence_of(:like) }

		it 'Article was published' do
			article.save!
			expect(article.is_published).to eq true
		end

		it { should have_many(:texts) }
		
		it 'Increase number of like' do
			article.save!
			expect(article.inscrease_like).to eq 2
		end
	end
end