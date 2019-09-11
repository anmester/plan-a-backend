class AuthController < ApplicationController
 
    def create
        @user = User.find_by(username: user_login_params[:username])
        # byebug
        if @user && @user.authenticate(user_login_params[:password])
            token = JWT.encode({ user_id: @user.id }, ENV['TOKEN_CODE'])
            render json: { user: @user, jwt: token }
        else
            render json: { message: 'Invalid username or password' }
        end
    end

    def retrieve
        token = request.headers['Authorization']
        user_id = JWT.decode(token, ENV['TOKEN_CODE'])[0]["user_id"]
        user = User.find(user_id)
        render json: user
    end
 
    private
 
    def user_login_params
        params.require(:user).permit(:username, :password)
    end
end
