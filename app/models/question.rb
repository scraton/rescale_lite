class Question < ApplicationRecord
  belongs_to :ingredient
  belongs_to :user

  has_one :recipe, through: :ingredient

  validates :content, presence: true
end
