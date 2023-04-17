class BidsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def index
        render json: Bid.all
    end

    def create
        bid = Bid.create(bid_params)
        if bid
            render json: bid, status: :created
        else
            render json: {error: "Bid not created"}, status: :unprocessable_entity
        end
    end

    def show
        bid = Bid.find_by(id: params[:id])
        if bid
            render json: bid, status: :ok
        else
            render json: {error: "Bid not found"}, status: :not_found
        end
    end

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
        params.permit(:bid_amount, :bid_time)
    end
    

end
