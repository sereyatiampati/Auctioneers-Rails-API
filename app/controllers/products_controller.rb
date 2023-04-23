class ProductsController < ApplicationController
    skip_before_action :authorized, only: [:index,:show, :latest_products, :create]

    # GET /products
    def index
        render json: Product.all
    end

    # GET /latest_products for the landing page
    def latest_products
        render json: Product.order(created_at: :asc).limit(6)
    end

    # POST /products
    def create
        product = Product.create(product_params)
        if product
            render json: product, status: :created
        else
            render json: {error: "Product not created"}, status: :unprocessable_entity
        end
    end

    # GET /products/:id
    def show
        product = Product.find_by(id: params[:id])
        if product
            render json: product, status: :ok
        else
            render json: {error: "Product not found"}, status: :not_found
        end
    end

    # GET /highestbid/:id
    def maxamount
        product = Product.find_by(id: params[:id])
        bid = product.bids.order(bid_amount: :desc).first
        if bid
            render json: bid, status: :ok
        else
            render json: {error: "Highest Bid not found"}, status: :not_found
        end
    end

    # DELETE /products/:id
    def destroy
        product = Product.find_by(id: params[:id])
        if product
            product.destroy
            head :no_content
        else
            render json: {error: "Product not found"}, status: :not_found
        end
    end

    private

    def product_params
        params.permit(:name, :description, :starting_price, :start_date, :end_date, :image)
    end  

end
