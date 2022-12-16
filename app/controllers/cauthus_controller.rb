class CauthusController < ApplicationController
  before_action :set_cauthu, only: %i[ show edit update destroy ]

  # GET /cauthus or /cauthus.json
  def index
    @cauthus = Cauthu.all
  end

  # GET /cauthus/1 or /cauthus/1.json
  def show
  end

  # GET /cauthus/new
  def new
    @cauthu = Cauthu.new
  end

  # GET /cauthus/1/edit
  def edit
  end

  # POST /cauthus or /cauthus.json
  def create
    @cauthu = Cauthu.new(cauthu_params)

    respond_to do |format|
      if @cauthu.save
        format.html { redirect_to cauthu_url(@cauthu), notice: "Cauthu was successfully created." }
        format.json { render :show, status: :created, location: @cauthu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cauthu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cauthus/1 or /cauthus/1.json
  def update
    respond_to do |format|
      if @cauthu.update(cauthu_params)
        format.html { redirect_to cauthu_url(@cauthu), notice: "Cauthu was successfully updated." }
        format.json { render :show, status: :ok, location: @cauthu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cauthu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cauthus/1 or /cauthus/1.json
  def destroy
    @cauthu.destroy

    respond_to do |format|
      format.html { redirect_to cauthus_url, notice: "Cauthu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cauthu
      @cauthu = Cauthu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cauthu_params
      params.require(:cauthu).permit(:name, :club, :age)
    end
end
