class MypropertiesController < ApplicationController
  before_action :set_myproperty, only: %i[ show edit update destroy ]

  # GET /myproperties or /myproperties.json
  def index
    @myproperties = Myproperty.all
  end

  # GET /myproperties/1 or /myproperties/1.json
  def show
  end

  # GET /myproperties/new
  def new
    @myproperty = Myproperty.new
  end

  # GET /myproperties/1/edit
  def edit
  end

  # POST /myproperties or /myproperties.json
  def create
    @myproperty = Myproperty.new(myproperty_params)

    respond_to do |format|
      if @myproperty.save
        format.html { redirect_to @myproperty, notice: "Myproperty was successfully created." }
        format.json { render :show, status: :created, location: @myproperty }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @myproperty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myproperties/1 or /myproperties/1.json
  def update
    respond_to do |format|
      if @myproperty.update(myproperty_params)
        format.html { redirect_to @myproperty, notice: "Myproperty was successfully updated." }
        format.json { render :show, status: :ok, location: @myproperty }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @myproperty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myproperties/1 or /myproperties/1.json
  def destroy
    @myproperty.destroy
    respond_to do |format|
      format.html { redirect_to myproperties_url, notice: "Myproperty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myproperty
      @myproperty = Myproperty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def myproperty_params
      params.fetch(:myproperty, {})
    end
end
