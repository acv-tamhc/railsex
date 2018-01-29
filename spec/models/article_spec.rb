require 'rails_helper'

RSpec.describe Article, type: :model do
	context 'Article' do
		it 'validates the presence of title' do
			article = Article.new(title: '')
			article.validate
			expect(article.errors.messages).to include(title: ["can't be blank"])
		end

		it 'validates the presence of content' do
			article = Article.new(content: '')
			article.validate
			expect(article.errors.messages).to include(title: ["can't be blank"])
		end

		it 'validates the presence of created at' do
			article = Article.new(created_at: '')
			article.validate
			expect(article.errors.messages).to include(title: ["can't be blank"])
		end

		it { should validate_presence_of(:like) }

		it 'Article was published' do
			article = Article.new(title: 'IsPublish', content: 'Content', like: 1)
			article.save!
			expect(article.is_published).to eq true
		end

		it 'Return number of like now' do
			article = Article.new(title: 'Article',  content: 'Content', like: 20)
			article.save!
			expect(article.show_like).to eq article.show_like
		end

		it 'Show text and images in order' do
			article = Article.new(title: 'Article', content: 'Content', like: 20)
			article.save!
			text1 = Text.new(headline: 'text1', order: 2, sentence: 'passage', like: 10, article_id: 1)
			text1.save!
			text2 = Text.new(headline: 'text2', order: 1, sentence: 'Passage text 2', like: 22, article_id: 1)
			text2.save!
			expect(article.show_info).to eq [text2, text1]
		end

		it { should have_many(:texts) }
		
		it 'Increase number of like' do
			article = Article.new(title: 'Article', content: 'Content', like: 20)
			article.save!
			expect(article.inscrease_like).to eq 21
		end
	end
end