class RolesController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create]

    def index
        render json: Role.all
    end

    def show
        role = Role.find_by(id: params[:id])
        if role
            render json: role, status: :ok
        else
            render json: {error:"Role not found"}, status: :not_found
        end
    end

    def create 
        role = Role.create(role_params)
        if role
            render json: role, status: :created
        else
            render json: {error: "Role not created"}, status: :unprocessable_entity
        end
    end

    def destroy
        role = Role.find_by(id: params[:id])
        if role
            role.destroy
            head :no_content
        else
            render json: {error: "Role not found"}, status: :not_found
        end
    end

    private

    def role_params
        params.permit(:name)
    end

end
