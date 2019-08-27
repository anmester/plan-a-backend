class UsersController < ApplicationController
    
    def create
        @user = User.create(user_params)
        if @user.valid?
            token = JWT.encode({ user_id: @user.id }, 'ice cream')
            render json: { user: @user, jwt: token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def index
        @users = User.all
        render json: @users
    end

    private
   
    def user_params
        params.require(:user).permit(:username, :password, :allergies)
    end
end
