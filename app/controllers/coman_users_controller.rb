class ComanUsersController < ApplicationController
  before_action :set_coman_user, only: %i[ show edit update destroy ]

  # GET /coman_users or /coman_users.json
  def index
    @coman_users = ComanUser.all
  end

  # GET /coman_users/1 or /coman_users/1.json
  def show
  end

  # GET /coman_users/new
  def new
    @coman_user = ComanUser.new
  end

  # GET /coman_users/1/edit
  def edit
  end

  # POST /coman_users or /coman_users.json
  def create
    @coman_user = ComanUser.new(coman_user_params)

    respond_to do |format|
      if @coman_user.save
        format.html { redirect_to coman_user_url(@coman_user), notice: "Coman user was successfully created." }
        format.json { render :show, status: :created, location: @coman_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coman_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coman_users/1 or /coman_users/1.json
  def update
    respond_to do |format|
      if @coman_user.update(coman_user_params)
        format.html { redirect_to coman_user_url(@coman_user), notice: "Coman user was successfully updated." }
        format.json { render :show, status: :ok, location: @coman_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coman_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coman_users/1 or /coman_users/1.json
  def destroy
    @coman_user.destroy!

    respond_to do |format|
      format.html { redirect_to coman_users_url, notice: "Coman user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coman_user
      @coman_user = ComanUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def coman_user_params
      params.require(:coman_user).permit(:email, :name, :company)
    end
end
