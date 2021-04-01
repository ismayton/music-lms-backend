class Api::V1::SubscriptionsController < ApplicationController
    def index 
        if params[:user_id]
            subscriptions = Subscription.where(user_id: params[:user_id])
            render json: subscriptions
        elsif params[:course_id]
            subscriptions = Subscription.where(course_id: params[:course_id])
            render json: subscriptions
        elsif params[:teacher_id] 
            teacher = Teacher.find(params[:teacher_id])
            subscriptions = Subscription.joins(:course).where(courses: { teacher_id: teacher.id  })
            render json: subscriptions
        else
            render json: Subscription.all
        end 
    end 
    #add show with user and course(?)
end
