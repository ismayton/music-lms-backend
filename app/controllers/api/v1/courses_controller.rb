class Api::V1::CoursesController < ApplicationController
    def index 
        if params[:user_id]
            user = User.find(params[:user_id])
            render json: user.courses
        elsif params[:teacher_id]
            teacher = Teacher.find(params[:teacher_id])
            render json: teacher.courses
        else
            render json: Course.all
        end 
    end 

    def show 
        render json: Course.find(params[:id])
    end

    def course_params 
        params.require(:course).permit(:title)
    end 
end
