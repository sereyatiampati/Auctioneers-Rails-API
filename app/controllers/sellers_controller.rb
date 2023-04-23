class SellersController < ApplicationController
  before_action :set_seller, only: %i[ show update destroy ]

  # GET /sellers
  # GET /sellers.json
  def index
    @sellers = Seller.all
  end

  # GET /sellers/1
  # GET /sellers/1.json
  def show
  end

  # POST /sellers
  # POST /sellers.json
  def create
    @seller = Seller.new(seller_params)

    if @seller.save
      render :show, status: :created, location: @seller
    else
      render json: @seller.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sellers/1
  # PATCH/PUT /sellers/1.json
  def update
    if @seller.update(seller_params)
      render :show, status: :ok, location: @seller
    else
      render json: @seller.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sellers/1
  # DELETE /sellers/1.json
  def destroy
    @seller.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller
      @seller = Seller.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seller_params
      params.require(:seller).permit(:username, :email)
    end
end
