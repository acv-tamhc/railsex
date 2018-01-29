class Article < ApplicationRecord
	validates :title, presence: true
	validates :description, presence: true
	validates :published_at, presence: true
	validates :like, presence: true
	validates :like, numericality: { great_than: 0 }

	has_many :texts, dependent: :destroy
	has_many :images, dependent: :destroy
	def initilize
		self.order = 0
		self.like = 0
		self.published_at = Time.now.zone
	end
	def is_published
		return self.published_at <= Time.now.zone
	end
	def inscrease_like
		self.like += 1
	end
end
