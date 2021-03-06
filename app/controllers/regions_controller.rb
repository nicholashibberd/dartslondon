class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  decorates_assigned :region

  layout "admin", :only => [:edit, :new, :admin_index]

  # GET /regions
  # GET /regions.json
  def index
    @regions = Region.all
  end

  def admin_index
    @regions = Region.all
  end

  # GET /regions/1
  # GET /regions/1.json
  def show
    @pubs = @region.all_pubs
  end

  # GET /regions/new
  def new
    @region = Region.new
    @regions = Region.all
  end

  # GET /regions/1/edit
  def edit
    @regions = Region.all
  end

  # POST /regions
  # POST /regions.json
  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to admin_index_regions_path, notice: 'Region was successfully created.' }
        format.json { render :show, status: :created, location: @region }
      else
        format.html { render :new }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regions/1
  # PATCH/PUT /regions/1.json
  def update
    respond_to do |format|
      if @region.update(region_params)
        format.html { redirect_to admin_index_regions_path, notice: 'Region was successfully updated.' }
        format.json { render :show, status: :ok, location: @region }
      else
        format.html { render :edit }
        format.json { render json: @region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regions/1
  # DELETE /regions/1.json
  def destroy
    @region.destroy
    respond_to do |format|
      format.html { redirect_to admin_index_regions_path, notice: 'Region was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_region
      @region = Region.find_by_slug(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def region_params
      params.require(:region).permit(:name, :description, :title_tag, :parent_id)
    end
end
