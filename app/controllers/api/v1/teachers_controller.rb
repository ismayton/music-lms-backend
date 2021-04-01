class Api::V1::TeachersController < ApplicationController
    # add show
    def index 
        render json: Teacher.all 
    end 

    def show 
        teacher = Teacher.find(params[:id])
        render json: teacher, :include => :courses
    end

end
