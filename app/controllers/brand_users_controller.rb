class BrandUsersController < ApplicationController
  before_action :set_brand_user, only: %i[ show edit update destroy ]

  # GET /brand_users or /brand_users.json
  def index
    @brand_users = BrandUser.all
  end

  # GET /brand_users/1 or /brand_users/1.json
  def show
  end

  # GET /brand_users/new
  def new
    @brand_user = BrandUser.new
  end

  # GET /brand_users/1/edit
  def edit
  end

  # POST /brand_users or /brand_users.json
  def create
    @brand_user = BrandUser.new(brand_user_params)

    respond_to do |format|
      if @brand_user.save
        format.html { redirect_to brand_user_url(@brand_user), notice: "Brand user was successfully created." }
        format.json { render :show, status: :created, location: @brand_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brand_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brand_users/1 or /brand_users/1.json
  def update
    respond_to do |format|
      if @brand_user.update(brand_user_params)
        format.html { redirect_to brand_user_url(@brand_user), notice: "Brand user was successfully updated." }
        format.json { render :show, status: :ok, location: @brand_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brand_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_users/1 or /brand_users/1.json
  def destroy
    @brand_user.destroy!

    respond_to do |format|
      format.html { redirect_to brand_users_url, notice: "Brand user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand_user
      @brand_user = BrandUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def brand_user_params
      params.require(:brand_user).permit(:email, :name, :company)
    end
end
