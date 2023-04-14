class UsersController < ApplicationController
   
    def index
        render json: User.all
    end

    def create
        user = User.create(user_params)
        if user
            render json: user, status: :created
        else
            render json: {error: "User not created"}, status: :unprocessable_entity
        end
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user, status: :ok
        else
            render json: {error:"User not found"}, status: :not_found
        end
    end

    def destroy
        user = User.find_by(id:params[:id])
        if user
            user.destroy
            head :no_content
        else
            render json:{error: "User not found"}, status: :not_found
        end
    end
end

private

def user_params
    params.permit(:username, :password, :email)
end
