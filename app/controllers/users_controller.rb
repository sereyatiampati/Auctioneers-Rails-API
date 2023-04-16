class UsersController < ApplicationController
    skip_before_action :authorized, only:[:create]
   
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

    # auto-login /GET /me
  def show
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

 # POST /sign up
    def create
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :unprocessable_entity
        end
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end


