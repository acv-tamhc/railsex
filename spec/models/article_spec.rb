require 'rails_helper'

RSpec.describe Article, type: :model do
	context 'Arcticle' do
		it 'validates the presence of title' do
			article = Arcticle.new(title: '')
			article.validate
			expect(article.errors.messages).to include(title: ["Can't be blank"])
		end

		it 'validates the presence of content' do
			article = Arcticle.new(content: '')
			article.validate
			expect(article.errors.messages).to include(title: ["Can't be blank"])
		end

		it 'validates the presence of created at' do
			article = Arcticle.new(created_at: '')
			article.validate
			expect(article.errors.messages).to include(title: ["Can't be blank"])
		end

		it 'validates the presence of number like' do
			article = Arcticle.new(like: '')
			article.validate
			expect(article.errors.messages).to include(title: ["Value must large than 0"])
		end

		it 'validates the presence of published' do
			article = Arcticle.new(published: '')
			article.validate
			expect(article.errors.messages).to include(title: ["Can't be blank"])
		end

		# it 'The article must complete' do
		# 	article = Arcticle.new(created_at: '2018-01-12 07:43:31')
		# 	if(article.created_at == DateTime.now.to_datetime)
		# 	expect(article.errors.messages).to include(title: ["The article not complete"])
		# endpect(article.errors.messages).to include(title: ["The article not complete"])
		# end

		it 'Article was published'
			article = Article.new(title: 'IsPublish', like: 1)
			article.save
			expect(article.is_published).to eq true
		end

		it 'Return number of like now'
			article = Article.new(title: 'Article', like: 20)
			article.save!
			expect(article.show_like).to eq article.show_like
		end

		it 'Show text and images in order' do
			article = Article.new(title: 'Article', like: 20)
			article.save
			text1 = Text.new(headline: 'text1', textorder: 2, passage: 'passage', textlike: 10, article_id: 1)
			text1.save
			text2 = Text.new(headline: 'text2', textorder: 1, passage: 'Passage text 2', textlike: 22, article_id: 1)
			text2.save
			expect(article.show_info).to eq [text2, text1]
		end

		# Multi text
		it { should have_many(:texts) }
	end
end