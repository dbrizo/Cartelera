class CartelsController < ApplicationController
  before_action :set_cartel, only: [:show, :edit, :update, :destroy]

  # GET /cartels
  # GET /cartels.json
  def index
    @cartels = Cartel.all
  end

  # GET /cartels/1
  # GET /cartels/1.json
  def show
  end

  # GET /cartels/new
  def new
    @cartel = Cartel.new
  end

  # GET /cartels/1/edit
  def edit
  end

  # POST /cartels
  # POST /cartels.json
  def create
    @cartel = Cartel.new(cartel_params)

    respond_to do |format|
      if @cartel.save
        format.html { redirect_to @cartel, notice: 'Cartel was successfully created.' }
        format.json { render :show, status: :created, location: @cartel }
      else
        format.html { render :new }
        format.json { render json: @cartel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cartels/1
  # PATCH/PUT /cartels/1.json
  def update
    respond_to do |format|
      if @cartel.update(cartel_params)
        format.html { redirect_to @cartel, notice: 'Cartel was successfully updated.' }
        format.json { render :show, status: :ok, location: @cartel }
      else
        format.html { render :edit }
        format.json { render json: @cartel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cartels/1
  # DELETE /cartels/1.json
  def destroy
    @cartel.destroy
    respond_to do |format|
      format.html { redirect_to cartels_url, notice: 'Cartel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cartel
      @cartel = Cartel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cartel_params
      params.require(:cartel).permit(:nombre, :sala, :hora)
    end
end
