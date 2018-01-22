class Image < ApplicationRecord
	validates :headline, presence: true
	validates :order, presence: true
	validates :picture, presence: true
	validates :like, presence: true
end
