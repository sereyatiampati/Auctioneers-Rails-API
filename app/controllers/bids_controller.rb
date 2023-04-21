class BidsController < ApplicationController

    # GET /bids
    def index
        render json: Bid.all
    end

    # POST /bids
    def create
        user = current_user
        bid = user.bids.create(bid_params)
        if bid
            render json: bid, status: :created
        else
            render json: {error: "Bid not created"}, status: :unprocessable_entity
        end
    end

    # GET /bidhistory
    def show
        user = current_user
        bid = user.bids.all
        if bid
            render json: bid, status: :ok
        else
            render json: {error: "Bid not found"}, status: :not_found
        end
    end

    # GET /productbids/:id
    def bidprods
        product = Product.find_by(id: params[:id])
        bid = product.bids.all
        if bid
            render json: bid, status: :ok
        else
            render json: {error: "Bid not found"}, status: :not_found
        end
    end

    # DELETE /bids/:id
    def destroy
        bid = Bid.find_by(id: params[:id])
        if bid
            bid.destroy
            head :no_content
        else
            render json: {error: "Bid not found"}, status: :not_found
        end
    end

    private
    def bid_params
        params.permit(:bid_amount, :bid_time, :user_id, :product_id)
    end
    

end
