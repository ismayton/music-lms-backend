class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end
    
    def show 
        user = User.find(params[:id])
        render json: user
    end

    def create
        if User.find_by(username: params[:username])
            render json: {error: "Username already taken."}
        else
            if params[:username]
                user = User.new(username: params[:username])
                user.password = params[:password]
                if user.save
                    render json: user 
                end
            else
                remder json: {error: "User could not be created."}
            end
        end
    end

    # delete index? add show
end
