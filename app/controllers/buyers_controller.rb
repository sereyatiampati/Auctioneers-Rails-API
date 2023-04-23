class BuyersController < ApplicationController
  before_action :set_buyer, only: %i[ show update destroy ]

  # GET /buyers
  # GET /buyers.json
  def index
    @buyers = Buyer.all
  end

  # GET /buyers/1
  # GET /buyers/1.json
  def show
  end

  # POST /buyers
  # POST /buyers.json
  def create
    @buyer = Buyer.new(buyer_params)

    if @buyer.save
      render :show, status: :created, location: @buyer
    else
      render json: @buyer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /buyers/1
  # PATCH/PUT /buyers/1.json
  def update
    if @buyer.update(buyer_params)
      render :show, status: :ok, location: @buyer
    else
      render json: @buyer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /buyers/1
  # DELETE /buyers/1.json
  def destroy
    @buyer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buyer
      @buyer = Buyer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def buyer_params
      params.require(:buyer).permit(:username, :email)
    end
end
