class CategoriesController < ApplicationController
    skip_before_action :authorized

    def index
        render json: Category.all
    end

    def create
        category = Category.create(category_params)
        if category
            render json: category, status: :created
        else
            render json: {error: "Category not created"}, status: :unprocessable_entity
        end
    end

    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: category, status: :ok
        else
            render json: {error: "Category not found"}, status: :not_found
        end
    end

    def destroy
        category = Category.find_by(id: params[:id])
        if category
            category.destroy
            head :no_content
        else
            render json: {error: "Category not found"}, status: :not_found
        end
    end

    # GET /category_products/:id
    def find
        category = Category.find_by(id: params[:id])
        products = category.products
        if products
            render json: products, status: :ok
        else
            render json: {errors: ["Products not found"]}, status: :not_found
        end
    end

    private
    
    def category_params
        params.permit(:category_name, :category_image)
    end


end
