class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :content, presence: true

  def recipe
    # TODO: Consider caching this in an instance variable
    question&.ingredient&.recipe
  end
end
