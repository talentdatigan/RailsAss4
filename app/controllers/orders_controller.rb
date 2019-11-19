class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
    @pokedexes = Pokedex.all
    @addresses = Address.all
    @credit_cards = CreditCard.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @pokedexes = Pokedex.all
    @credit_cards = CreditCard.all
    @addresses = Address.all
  end

  # GET /orders/new
  def new
    @order = Order.new
    @pokedexes = Pokedex.all
    @addresses = Address.all
    @credit_cards = CreditCard.all
  end



  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @pokedexes = Pokedex.all
    @addresses = Address.all
    @credit_cards = CreditCard.all

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:price, :street, :city, :postcode, :card_no, :exp_date, :name_on_card, :organisation,  :pokedex_id,:address_id,:credit_card_id)
    end
end
