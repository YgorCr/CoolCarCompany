class ShopCartsController < ApplicationController
  before_action :set_shop_cart, only: [:show, :edit, :update, :destroy]

  # GET /shop_carts
  # GET /shop_carts.json
  def index
    @shop_carts = ShopCart.all
  end

  # GET /shop_carts/1
  # GET /shop_carts/1.json
  def show
  end

  # GET /shop_carts/new
  def new
    @shop_cart = ShopCart.new
  end

  # GET /shop_carts/1/edit
  def edit
  end

  # POST /shop_carts
  # POST /shop_carts.json
  def create
    @shop_cart = ShopCart.new(shop_cart_params)

    respond_to do |format|
      if @shop_cart.save
        format.html { redirect_to @shop_cart, notice: 'Shop cart was successfully created.' }
        format.json { render :show, status: :created, location: @shop_cart }
      else
        format.html { render :new }
        format.json { render json: @shop_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_carts/1
  # PATCH/PUT /shop_carts/1.json
  def update
    respond_to do |format|
      if @shop_cart.update(shop_cart_params)
        format.html { redirect_to @shop_cart, notice: 'Shop cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_cart }
      else
        format.html { render :edit }
        format.json { render json: @shop_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_carts/1
  # DELETE /shop_carts/1.json
  def destroy
    @shop_cart.destroy
    respond_to do |format|
      format.html { redirect_to shop_carts_url, notice: 'Shop cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_cart
      @shop_cart = ShopCart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_cart_params
      params.require(:shop_cart).permit(:user_id, :total)
    end
end
