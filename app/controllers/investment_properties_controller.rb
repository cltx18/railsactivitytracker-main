class InvestmentPropertiesController < ApplicationController
  before_action :set_investment_property, only: %i[ show edit update destroy ]

  # GET /investment_properties or /investment_properties.json
  def index
    @investment_properties = InvestmentProperty.all
  end

  # GET /investment_properties/1 or /investment_properties/1.json
  def show
  end

  # GET /investment_properties/new
  def new
    @investment_property = InvestmentProperty.new
  end

  # GET /investment_properties/1/edit
  def edit
  end

  # POST /investment_properties or /investment_properties.json
  def create
    @investment_property = InvestmentProperty.new(investment_property_params)

    respond_to do |format|
      if @investment_property.save
        format.html { redirect_to @investment_property, notice: "Investment property was successfully created." }
        format.json { render :show, status: :created, location: @investment_property }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @investment_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investment_properties/1 or /investment_properties/1.json
  def update
    respond_to do |format|
      if @investment_property.update(investment_property_params)
        format.html { redirect_to @investment_property, notice: "Investment property was successfully updated." }
        format.json { render :show, status: :ok, location: @investment_property }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @investment_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investment_properties/1 or /investment_properties/1.json
  def destroy
    @investment_property.destroy
    respond_to do |format|
      format.html { redirect_to investment_properties_url, notice: "Investment property was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investment_property
      @investment_property = InvestmentProperty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def investment_property_params
      params.require(:investment_property).permit(:date, :address_one, :address_two, :address_city, :address_state, :address_county, :status, :beds, :baths, :square_foot, :overview, :feature_one, :feature_two, :feature_three, :home_value, :tax_history, :price_history, :monthly_cost, :nearby_schools, :legal_protections, :home_type, :year_built, :hoa_string, :price_per_square_foot, :flooring, :heating, :cooling, :lot_size, :lot_features_string, :foundation, :roof_type, :roof_age, :water_util, :electricity_util, :sewer_util, :association_name, :annual_taxes)
    end
end
