class Question < ApplicationRecord
  belongs_to :ingredient
  belongs_to :user

  has_one :recipe, through: :ingredient
  has_one :answer, dependent: :destroy

  validates :content, presence: true
end
