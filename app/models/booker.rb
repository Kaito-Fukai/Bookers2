class Booker < ApplicationRecord
	belongs_to :user
	validates :title, presence: true
	validates :impression, length: {maximum: 200}, presence: true
end
