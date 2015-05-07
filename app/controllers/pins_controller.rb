
class PinsController < ApplicationController

  # STANDARD METHODS
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  # YOU CAN ONLY EDIT, UPDATE OR DELETE PINS YOU HAVE CREATED
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  

  # GET /pins
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
    @pin = current_user.pins.build
  end


  # GET /pins/1/edit
  # GET EDIT PIN PAGE
  def edit
  end



  # POST /pins
  # CREATE NEW PIN
  def create
  @pin = current_user.pins.build(pin_params)
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

    # USER MUST BE LOGGED IN TO GET TO THE PINS PAGES
    def require_login
      unless current_user
        redirect_to root_path
      end
    end

    # SAFEGAURD SO THAT EVEN IF A USER ENTERED THE ID FOR A PIN IN THE URL, THEY STILL CANT EDIT
    def correct_user
      @pin = current_user.pins.find_by(id: params[:id])
      redirect_to pins_path, notice: "Not Authorised to edit this pin" if @pin.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # THIS BIT DEFINED WHAT FIELDS USERS ARE ALLOWED TO ENTER DATA INTO IN THE FORMS
    def pin_params
      params.require(:pin).permit(:description, :image)
    end
end
