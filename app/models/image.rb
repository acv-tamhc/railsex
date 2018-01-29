class Image < ApplicationRecord
	validates :headline, presence: true
	validates :order, presence: true
	validates :like, presence: true
	has_attached_file :picture, styles: { medium: '300x300', thumb: '100x100'}, default_url: '/public/not_found.png'
	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
	def initilize
		self.order = 0
		self.like = 0
	end
	def inscrease 
		self.like.next
	end
end
