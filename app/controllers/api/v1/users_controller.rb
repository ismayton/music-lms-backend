class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    def show
        @user = User.find(params[:id])
        if @user
            render json: { user: @user }
        else
            render json: {
            status: 500,
            errors: ['user not found']
            }
        end
    end

    def create
        @user = User.new(user_params)
        # @user.password  = user_params[:password]
        # @user.password_confirmation = user_params[:password]
        if @user.save
            login!  
            render json: {
                status: :created,
                user: @user
            }
        else 
            render json: {
                status: 500,
                errors: @user.errors.full_messages
            }
        end
    end
    
private
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
