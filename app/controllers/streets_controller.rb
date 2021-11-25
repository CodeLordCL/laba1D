class StreetsController < ApplicationController
  before_action :set_street, only: %i[ show edit update destroy ]

  # GET /streets or /streets.json
  def index
    @streets = Street.all
  end

  # GET /streets/1 or /streets/1.json
  def show
  end

  # GET /streets/new
  def new
    @street = Street.new
  end

  # GET /streets/1/edit
  def edit
  end

  # POST /streets or /streets.json
  def create
    @street = Street.create(street_params)

    redirect_to :controller => 'cities', :action => 'show', :id => params[:city_id]
  end

  # PATCH/PUT /streets/1 or /streets/1.json
  def update
    @street.update(street_params)

    redirect_to :controller => 'cities', :action => 'show', :id => params[:city_id]
  end

  # DELETE /streets/1 or /streets/1.json
  def destroy
    @street.destroy
    respond_to do |format|
      format.html { redirect_to streets_url, notice: "Street was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_street
      @street = Street.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def street_params
      params.permit(:name, :building_count, :city_id)
    end
end
