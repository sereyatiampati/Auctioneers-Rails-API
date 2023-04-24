class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create, :destroy]
    
    skip_before_action :verify_authenticity_token
    rescue_from ActiveRecord::RecordNotFound, with: :user_not_found

    # POST /login

    # def create
    #     @user = User.find_by(username: user_login_params[:username])
    #     #User#authenticate comes from BCrypt
    #     if @user && @user.authenticate(user_login_params[:password])
    #     # encode token comes from ApplicationController
    #     token = encode_token({ user_id: @user.id })
    #     render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    #     else
    #     render json: { message: 'Invalid username or password' }, status: :unauthorized
    #     end
    # end

    # seller
    # def create 
    #     buyer = User.find_by(username: params[:username], role_id: 1)
    #     vendor = User.find_by(username: params[:username], role_id: 2)
    #     if buyer&.authenticate(params[:password])
    #         session[:buyer_id] = buyer.id
    #         render json: user, status: :created            
    #     elsif seller&.authenticate(params[:password])
    #         session[:vendor_id] = vendor.id
    #         render json: user, status: :created         
    #     else
    #         render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    #     end
    # end

    # def create
    #     user = User.find_by(username: params[:username])
    #     if user&.authenticate(params[:password])
    #         session[:user_id] = user.id
    #         render json: user, status: :created
    #     else
    #         render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    #     end
    # end

    # POST /login
    def create
        user = User.find_by(username:user_login_params[:username])
        if user&.authenticate(user_login_params[:password])
            if (user.user_type =="Buyer")
                buyer = Buyer.find_by(user_id:user.id)
                if buyer
                    session[:buyer_id] = buyer.id
                    render json: buyer
                    
                else
                    render json: {errors:["Invalid Buyer username or password"]}, status: :unauthorized
                end
            elsif((user.user_type =="Seller"))
                seller = Seller.find_by(user_id:user.id)
                if seller
                    session[:seller_id] = seller.id
                    render json: seller
                else
                    render json: {errors:["Invalid Seller username or password"]}, status: :unauthorized
                end
            else
                render json: {errors:["You have not selected"]}, status: :not_found
            end
        else
        render json: {errors:["Wrong username or password"]}, status: :unprocessable_entity #422
        end
    end

    # DELETE /logout
    def destroy
        session.delete :buyer_id
        session.delete :seller_id
        head :no_content
    end

    private

    def user_login_params
        params.permit(:username, :password)
    end

    # error handling
    def user_not_found
        render json: {errors:["User does not exist"]}, status: :not_found  #404
    end
end
