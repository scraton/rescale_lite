# frozen_string_literal: true

class QuestionAnswerComponent < ViewComponent::Base
  def initialize(question:, classnames: nil)
    @question = question
    @answer = question&.answer
    @classnames = classnames || ''
  end

  def render?
    @question.present?
  end
end
