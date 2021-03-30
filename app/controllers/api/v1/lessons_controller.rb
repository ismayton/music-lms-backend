class Api::V1::LessonsController < ApplicationController
    def index 
        if params[:course_id]
            course = Course.find(params[:course_id])
            render json: course.lessons
        end
    end

    #CRUD
end
