class Api::V1::CoursesController < ApplicationController
    def index 
        if params[:user_id]
            user = User.find(params[:user_id])
            courses = user.courses
            render json: courses
        elsif params[:teacher_id]
            teacher = Teacher.find(params[:teacher_id])
            courses = teacher.courses
            render json: courses
        else
            render json: Course.all
        end 
    end 

    def show 
        render json: Course.find(params[:id])
    end

    #CRUD
end
