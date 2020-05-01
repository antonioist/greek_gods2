class Comment < ApplicationRecord
  belongs_to :prayer
  belongs_to :god
  validates :description, presence: :true, uniqueness: true
  validates :prayer, uniqueness: { scope: :god }
end
