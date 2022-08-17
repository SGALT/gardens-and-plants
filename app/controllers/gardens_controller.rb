class GardensController < ApplicationController
  before_action :set_garden, only: %i[ show edit update destroy ]

  # GET /gardens or /gardens.json
  def index
    @gardens = Garden.all
  end

  # GET /gardens/1 or /gardens/1.json
  def show
  end

  # GET /gardens/new
  def new
    @garden = Garden.new
  end

  # GET /gardens/1/edit
  def edit
  end

  # POST /gardens or /gardens.json
  def create
    @garden = Garden.new(garden_params)

    respond_to do |format|
      if @garden.save
        redirect_to garden_url(@garden), notice: "Garden was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /gardens/1 or /gardens/1.json
  def update
    respond_to do |format|
      if @garden.update(garden_params)
        redirect_to garden_url(@garden), notice: "Garden was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  # DELETE /gardens/1 or /gardens/1.json
  def destroy
    @garden.destroy

    respond_to do |format|
      redirect_to gardens_url, notice: "Garden was successfully destroyed."
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garden
      @garden = Garden.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def garden_params
      params.require(:garden).permit(:name, :banner_url)
    end
end
