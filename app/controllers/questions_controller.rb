class QuestionsController < ApplicationController
  before_action :set_ingredient, only: %i[ new create ]

  # GET /ingredients/:ingredient_id/questions/new
  def new
    @question = Question.new
  end

  # POST /ingredients/:ingredient_id/questions
  def create
    @question = Question.new(question_params).tap do |q|
      q.ingredient = @ingredient
      q.user = get_current_user
    end

    respond_to do |format|
      if @question.save
        format.html { redirect_to recipe_url(@question.recipe), notice: "Question was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:ingredient_id])
  end

  def question_params
    params.require(:question).permit(:content)
  end
end
