class NewcitymeteosController < ApplicationController
  before_action :set_newcitymeteo, only: [:show, :edit, :update, :destroy]

  # GET /newcitymeteos
  # GET /newcitymeteos.json
  def index
    @newcitymeteos = Newcitymeteo.all
  end

  # GET /newcitymeteos/1
  # GET /newcitymeteos/1.json
  def show
  end

  # GET /newcitymeteos/new
  def new
    @newcitymeteo = Newcitymeteo.new
  end

  # GET /newcitymeteos/1/edit
  def edit
  end

  # POST /newcitymeteos
  # POST /newcitymeteos.json
  def create
    @newcitymeteo = Newcitymeteo.new(newcitymeteo_params)

    respond_to do |format|
      if @newcitymeteo.save
        format.html { redirect_to @newcitymeteo, notice: 'Newcitymeteo was successfully created.' }
        format.json { render :show, status: :created, location: @newcitymeteo }
      else
        format.html { render :new }
        format.json { render json: @newcitymeteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newcitymeteos/1
  # PATCH/PUT /newcitymeteos/1.json
  def update
    respond_to do |format|
      if @newcitymeteo.update(newcitymeteo_params)
        format.html { redirect_to @newcitymeteo, notice: 'Newcitymeteo was successfully updated.' }
        format.json { render :show, status: :ok, location: @newcitymeteo }
      else
        format.html { render :edit }
        format.json { render json: @newcitymeteo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newcitymeteos/1
  # DELETE /newcitymeteos/1.json
  def destroy
    @newcitymeteo.destroy
    respond_to do |format|
      format.html { redirect_to newcitymeteos_url, notice: 'Newcitymeteo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newcitymeteo
      @newcitymeteo = Newcitymeteo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newcitymeteo_params
      params.require(:newcitymeteo).permit(:name, :lat, :lon, :temperature, :summary)
    end
end
