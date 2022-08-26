class FlipsController < ApplicationController
  before_action :set_flip, only: %i[ show edit update destroy ]

  # GET /flips or /flips.json
  def index
    @flips = Flip.all
  end

  # GET /flips/1 or /flips/1.json
  def show
  end

  # GET /flips/new
  def new
    @flip = Flip.new
  end

  # GET /flips/1/edit
  def edit
  end

  # POST /flips or /flips.json
  def create
    @flip = Flip.new(flip_params)

    respond_to do |format|
      if @flip.save
        format.html { redirect_to @flip, notice: "Flip was successfully created." }
        format.json { render :show, status: :created, location: @flip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flips/1 or /flips/1.json
  def update
    respond_to do |format|
      if @flip.update(flip_params)
        format.html { redirect_to @flip, notice: "Flip was successfully updated." }
        format.json { render :show, status: :ok, location: @flip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flips/1 or /flips/1.json
  def destroy
    @flip.destroy
    respond_to do |format|
      format.html { redirect_to flips_url, notice: "Flip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flip
      @flip = Flip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flip_params
      params.require(:flip).permit(:date, :address_one, :address_two, :address_city, :address_state, :address_county, :status, :beds, :baths, :square_foot, :overview, :feature_one, :feature_two, :feature_three, :home_value, :tax_history, :price_history, :monthly_cost, :nearby_schools, :legal_protections, :home_type, :year_built, :hoa_string, :price_per_square_foot, :flooring, :heating, :cooling, :lot_size, :lot_features_string, :foundation, :roof_type, :roof_age, :water_util, :electricity_util, :sewer_util, :association_name, :annual_taxes)
    end
end
