class MeteosController < ApplicationController
  before_action :set_meteo, only: [:show, :edit, :update, :destroy]

  # GET /meteos
  # GET /meteos.json
  def index
    @meteos = Meteo.all
  end

  # GET /meteos/1
  # GET /meteos/1.json
  def show
  end

  # GET /meteos/new
  def new
    @meteo = Meteo.new
  end

  # GET /meteos/1/edit
  def edit
  end

  # POST /meteos
  # POST /meteos.json
  def create
    @meteo = Meteo.new(meteo_params)

    respond_to do |format|
      if @meteo.save
        format.html { redirect_to @meteo, notice: 'Meteo was successfully created.' }
        format.json { render :show, status: :created, location: @meteo }
      else
        format.html { render :new }
        format.json { render json: @meteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meteos/1
  # PATCH/PUT /meteos/1.json
  def update
    respond_to do |format|
      if @meteo.update(meteo_params)
        format.html { redirect_to @meteo, notice: 'Meteo was successfully updated.' }
        format.json { render :show, status: :ok, location: @meteo }
      else
        format.html { render :edit }
        format.json { render json: @meteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meteos/1
  # DELETE /meteos/1.json
  def destroy
    @meteo.destroy
    respond_to do |format|
      format.html { redirect_to meteos_url, notice: 'Meteo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meteo
      @meteo = Meteo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meteo_params
      params.require(:meteo).permit(:city, :temperature)
    end
end
