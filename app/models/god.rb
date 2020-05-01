class God < ApplicationRecord
  has_many :comments
  has_many :prayers, through: :comments
  validates :name, presence: :true, uniqueness: true
  has_one_attached :photo
end
