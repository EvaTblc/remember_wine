class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
          
  has_many :wines
  has_one_attached :image
end
