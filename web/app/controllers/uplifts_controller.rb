class UpliftsController < ApplicationController
  before_action :set_uplift, only: [:show, :edit, :update, :destroy]

  # GET /uplifts
  # GET /uplifts.json
  def index
    @uplifts = Uplift.all
  end

  # GET /uplifts/1
  # GET /uplifts/1.json
  def show
  end

  # GET /uplifts/new
  def new
    @uplift = Uplift.new
  end

  # GET /uplifts/1/edit
  def edit
  end

  # POST /uplifts
  # POST /uplifts.json
  def create
    @uplift = Uplift.new(uplift_params)

    respond_to do |format|
      if @uplift.save
        format.html { redirect_to @uplift, notice: 'Uplift was successfully created.' }
        format.json { render :show, status: :created, location: @uplift }
      else
        format.html { render :new }
        format.json { render json: @uplift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uplifts/1
  # PATCH/PUT /uplifts/1.json
  def update
    respond_to do |format|
      if @uplift.update(uplift_params)
        format.html { redirect_to @uplift, notice: 'Uplift was successfully updated.' }
        format.json { render :show, status: :ok, location: @uplift }
      else
        format.html { render :edit }
        format.json { render json: @uplift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uplifts/1
  # DELETE /uplifts/1.json
  def destroy
    @uplift.destroy
    respond_to do |format|
      format.html { redirect_to uplifts_url, notice: 'Uplift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uplift
      @uplift = Uplift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uplift_params
      params.require(:uplift).permit(:title, :url)
    end
end
