
class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  # GET /pins
  # GET /pins.json
  # GET PINS LIST
  def index
    @pins = Pin.all
  end


  # GET /pins/1
  # READ INDIVIDUAL PIN
  def show
  end


  # GET /pins/new
  # GET NEW PIN PAGE
  def new
    @pin = Pin.new
  end


  # GET /pins/1/edit
  # GET EDIT PIN PAGE
  def edit
  end



  # POST /pins
  # CREATE NEW PIN
  def create
  @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to @pin, notice: 'Pin was successfully created.'
    else
      render :new
    end
  end



  # PATCH/PUT /pins/1
  # UPDATE PIN
  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfully updated...'
    else
      render :edit
    end
  end



  # DELETE /pins/1
  # DELETE PIN
  def destroy
    @pin.destroy
      redirect_to pins_url, notice: 'Pin was successfully destroyed.'
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pin_params
      params.require(:pin).permit(:description)
    end
end