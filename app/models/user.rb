class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookers
  attachment :profile_image

  validates :name, length: { minimum: 2, maximum: 20}
  validates :profile_text, length: { maximum: 50 }

end
