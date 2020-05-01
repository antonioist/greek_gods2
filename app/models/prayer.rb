class Prayer < ApplicationRecord
  has_one :comment, dependent: :destroy
  has_one :god, through: :comment
  validates :name, :pray, presence: true
  has_one_attached :photo
  validates :photo, presence: true
end
