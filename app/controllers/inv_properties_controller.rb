class InvPropertiesController < ApplicationController
  before_action :set_inv_property, only: %i[ show edit update destroy ]

  # GET /inv_properties or /inv_properties.json
  def index
    @inv_properties = InvProperty.all
  end

  # GET /inv_properties/1 or /inv_properties/1.json
  def show
  end

  # GET /inv_properties/new
  def new
    @inv_property = InvProperty.new
  end

  # GET /inv_properties/1/edit
  def edit
  end

  # POST /inv_properties or /inv_properties.json
  def create
    @inv_property = InvProperty.new(inv_property_params)

    respond_to do |format|
      if @inv_property.save
        format.html { redirect_to @inv_property, notice: "Inv property was successfully created." }
        format.json { render :show, status: :created, location: @inv_property }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inv_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inv_properties/1 or /inv_properties/1.json
  def update
    respond_to do |format|
      if @inv_property.update(inv_property_params)
        format.html { redirect_to @inv_property, notice: "Inv property was successfully updated." }
        format.json { render :show, status: :ok, location: @inv_property }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inv_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inv_properties/1 or /inv_properties/1.json
  def destroy
    @inv_property.destroy
    respond_to do |format|
      format.html { redirect_to inv_properties_url, notice: "Inv property was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inv_property
      @inv_property = InvProperty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inv_property_params
      params.fetch(:inv_property, {})
    end
end
