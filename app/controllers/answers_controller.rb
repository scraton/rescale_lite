class AnswersController < ApplicationController
  before_action :set_ingredient, only: %i[ new create ]
  before_action :set_question, only: %i[ new create ]

  # GET /questions/:question_id/answers/new
  def new
    @answer = Answer.new
  end

  # POST /questions/:question_id/answers
  def create
    @answer = Answer.new(answer_params).tap do |q|
      q.question = @question
      q.user = get_current_user
    end

    respond_to do |format|
      if @question.save
        format.html { redirect_to recipe_url(@answer.recipe), notice: "Answer was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:ingredient_id])
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

  def answer_params
    params.require(:answer).permit(:content)
  end
end

