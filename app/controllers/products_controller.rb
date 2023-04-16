class ProductsController < ApplicationController

    def index
        render json: Product.all
    end

    def create
        product = Product.create(product_params)
        if product
            render json: product, status: :created
        else
            render json: {error: "Product not created"}, status: :unprocessable_entity
        end
    end

    def show
        product = Product.find_by(id: params[:id])
        if product
            render json: product, status: :ok
        else
            render json: {error: "Product not found"}, status: :not_found
        end
    end

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
