class Api::V1::TeachersController < ApplicationController
    def show 
        teacher = Teacher.find(params[:id])
        render json: teacher
    end
end
