class Article < ApplicationRecord
	validates :title, presence: true
	validates :content, presence: true
	validates :like, presence: true
	validates :like, numericality: { great_than: 0 }

	has_many :texts, dependent: :destroy
	has_many :images, dependent: :destroy
	
	def is_published
		return self.created_at < Time.now.zone
	end
	def inscrease_like
		self.like.next
	end
end
