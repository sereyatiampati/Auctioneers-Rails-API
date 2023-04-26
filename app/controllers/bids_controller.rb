class BidsController < ApplicationController
    skip_before_action :authorized
    # GET /bids
    def index
        render json: Bid.all
    end

    # POST /bids
    def create
        buyer = current_user
        bid = buyer.bids.create!(params.permit(:bid_amount,:product_id, bid_time: Date.today ))
        if bid
            render json: bid, status: :created
        else
            render json: {error: ["Bid not created"]}, status: :unprocessable_entity
        end
    end

    # GET /bidhistory
    def show
        buyer = current_user
        bid = buyer.products.all
        if bid
            render json: bid, status: :ok
        else
            render json: {error: "Bid not found"}, status: :not_found
        end
    end

    # GET /bids/:id
    def onebid
        bid = Bid.find_by(id: params[:id])
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
    # def bid_params
    #     params.permit(:bid_amount, :bid_time, :product_id)
    # end
    

end
