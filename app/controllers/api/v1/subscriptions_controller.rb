class Api::V1::SubscriptionsController < ApplicationController
    require 'pry'
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

    def create 
        @subscription = Subscription.new(subscription_params)
        if @subscription.save
            @user = User.find(params[:user_id])
            render json: @user
        else
            render json: {error: "Subscription could not be created."}
        end
    end 

    def destroy
        @sub = Subscription.find(params[:id])
        @user = User.find(params[:user_id])
        if @sub.destroy 
            @user.save
            render json: @user
        else
            render json: {error: "Subscription could not be deleted."}
        end
    end

    private

    def subscription_params 
        params.require(:subscription).permit(:user_id, :course_id)
    end
end
