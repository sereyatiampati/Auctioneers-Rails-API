class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]
    skip_before_action :verify_authenticity_token

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
    #     seller = User.find_by(username: params[:username], role_id: 2)
    #     if buyer&.authenticate(params[:password])
    #         session[:buyer_id] = buyer.id
    #         render json: user, status: :created            
    #     elsif seller&.authenticate(params[:password])
    #         session[:seller_id] = seller.id
    #         render json: user, status: :created         
    #     else
    #         render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    #     end
    # end

    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end

    # DELETE /logout
    def destroy
        session.delete :user_id
        head :no_content
    end

    private

    def user_login_params
        params.permit(:username, :password)
    end
end
