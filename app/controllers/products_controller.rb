class ProductsController < ApplicationController
    skip_before_action :authorized
    # before_action :seller_auth, 

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
        seller = seller_now
        product = Product.create(product_params)
        if product
            render json: product, status: :created
        else
            render json: product.errors, status: :unprocessable_entity
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
        @bid = product.bids.order(bid_amount: :desc).first
        # allbids = product.bids.all
        # bidscount = allbids.count
        
        buyer = Buyer.find_by(id: @bid.buyer_id)
        if @bid
            # render json: {bids: @bid, count: bidscount, product: product, buyer: buyer}, except: [:created_at, :updated_at], status: :ok
            render json: @bid, status: :ok
        else
            render json: {error: "Highest Bid not found"}, status: :not_found
        end

        if (product.end_date == Date.today)
            BidMailer.with(bid: @bid).winning_bidder(buyer).deliver
        end
    end


     # GET /activebids
     def active
        @active_bids = Product.where("end_date > ?", Date.today)
        render json: @active_bids
    end

    # GET /inactive_bids
    def inactive
        @inactive_bids = Product.where("end_date < ?", Date.today)
        render json: @inactive_bids
    end

    # PATCH /close_bid/:id
    def closebid
        product = Product.find_by(id: params[:id])
        product.update(product_params)
        if product
            render json: product, status: :created
        else
            render json: {error: "Product not updated"}, status: :unprocessable_entity
        end   
    end

    # PATCH /products/:id
    def update
        product = Product.find_by(id: params[:id])
        product.update(product_params)
        if product
            render json: product, status: :created
        else
            render json: {error: "Product not updated"}, status: :unprocessable_entity
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
        params.permit(:name, :description, :starting_price, :start_date, :end_date, :image, :seller_id, :category_id)
    end  

end
