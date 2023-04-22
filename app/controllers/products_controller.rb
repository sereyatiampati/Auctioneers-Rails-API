class ProductsController < ApplicationController
    skip_before_action :authorized, only: [:index,:show]

    # GET /products
    def index
        render json: Product.all
    end

    # GET /landing_products
    def landing
        render json: Product.order(created_at: :desc)
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
