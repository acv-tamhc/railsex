class Article < ApplicationRecord
	validates :title, presence: true
	validates :content, presence: true
	validates :like, presence: true
	validates :like, numericality: { great_than: 0 }

	has_many :texts, dependent: :destroy
	has_many :images, dependent: :destroy

	def is_published
		return self.created_at < DateTime.now.to_datetime
	end

	def show_like
		return self.like
	end

	def show_info
		self.texts.order(:order) + self.images.order(:order)
	end

	def increase_like
		self.like.next
		return self.like
	end


end
