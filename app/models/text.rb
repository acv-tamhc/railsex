class Text < ApplicationRecord
	validates :headline, presence: true
	validates :order, presence: true
	validates :sentence, presence: true
	validates :like, presence: true
end
