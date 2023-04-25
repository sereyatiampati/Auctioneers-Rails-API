class UsersController < ApplicationController
    # skip_before_action :authorized, only:[:create, :sellerlog]
    # before_action :seller_auth, only: [:seller_log]
    # skip_before_action :verify_authenticity_token
    # skip_before_action :authorized

    # rescue_from ActiveRecord::RecordInvalid, with: :invalid_user_credentials
    # rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
   
    # def index
    #     render json: User.all
    # end

    # def create
    #     user = User.create(user_params)
    #     if user
    #         render json: user, status: :created
    #     else
    #         render json: {error: "User not created"}, status: :unprocessable_entity
    #     end
    # end

    # def show
    #     user = User.find_by(id: params[:id])
    #     if user
    #         render json: user, status: :ok
    #     else
    #         render json: {error:"User not found"}, status: :not_found
    #     end
    # end

    # def destroy
    #     user = User.find_by(id:params[:id])
    #     if user
    #         user.destroy
    #         head :no_content
    #     else
    #         render json:{error: "User not found"}, status: :not_found
    #     end
    # end

    
    # def profile
    #   render json: { user: UserSerializer.new(current_user) }, status: :accepted
    # end

    # auto-login /GET /buyer
    # def buyerlog
    #   buyer = Buyer.find_by(id: session[:buyer_id])
    #   render json: buyer, status: :ok
    # end

    # # GET /seller
    # def sellerlog
    #   seller = Seller.find_by(id: session[:seller_id])
    #   render json: seller, status: :ok
    # end

    # GET /me
    # def show
    #   if session.include? :buyer_id
    #     buyer = Buyer.find_by(id: session[:buyer_id])
    #     render json: buyer, status: :ok
    #   else
    #     seller = Seller.find_by(id: session[:seller_id])
    #     render json: seller, status: :ok
    #   end
    # end

    
    # def create
    #   @user = User.create(user_params)
    #   if @user.valid?
    #       render json: { user: UserSerializer.new(@user) }, status: :created
    #   else
    #       render json: { error: 'failed to create user' }, status: :unprocessable_entity
    #   end
    # end

    # def create
    #   user = User.create(user_params)
    #   if user_params[:role_id] == 1 && user.valid? 
    #     session[:buyer_id] = user.id
    #     render json: user, status: :created
    #   elsif 
    #     user_params[:role_id] == 2 && user.valid? 
    #     session[:vendor_id] = user.id
    #     render json: user, status: :created
    #   else
    #     render json: { error: 'failed to create user' }, status: :unprocessable_entity
    #   end    
    # end

    # POST /signup
    # def create
    #   user = User.create!(user_params)
    #   if user
    #       if (params[:user_type]=="Buyer")
    #       buyer= Buyer.create!(user_id:user.id, username:params[:username],email:params[:email])
    #       session[:buyer_id] = buyer.id        
    #       render json: buyer
    #       else
    #       seller= Seller.create!(user_id:user.id, username:params[:username],email:params[:email])
    #       session[:seller_id] = seller.id
    #       render json: seller
    #       end
    #   end
    # end
    
    # private
    # # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # # Only allow a list of trusted parameters through.
    # def user_params
    #   params.permit(:email, :username, :password, :password_confirmation, :user_type)
    # end

    # # error handling
    # def invalid_user_credentials(invalid)
    #   render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity #422
    # end

    # def user_not_found
    #   render json: {errors:["User does not exist"]}, status: :not_found  #404
    # end

    skip_before_action :authorized, only: [:create]

  def create
    @user = User.create!(user_params)
    if @user.valid?
      if (params[:user_type]=="Buyer")
        @buyer= Buyer.create!(user_id:user.id, username:params[:username],email:params[:email])
        @token = encode_token(user_id: @buyer.id)
        render json: { user: @buyer, jwt: @token }, status: :created
      elsif (params[:user_type]=="Seller")
        @seller= Seller.create!(user_id:user.id, username:params[:username],email:params[:email])
        @token = encode_token(user_id: @seller.id)
        render json: { user: @seller, jwt: @token }, status: :created
      end
    else
      render json: { error: ['failed to create user' ]}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :password, :email, :password_confirmation, :user_type)
  end
end


