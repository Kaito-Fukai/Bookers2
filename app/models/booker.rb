class Booker < ApplicationRecord
	belongs_to :user
	validates :impression, length: {maximum: 200}
end
