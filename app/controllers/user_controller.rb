class UserController < ApplicationController
    before_filter :authenticate_user!

    def index
        @posts = current_user.posts.all
    end

    def create
        @user = User.new(user_params)

        if @user.save
            sign_in(@user)
            redirect_to @user, notice:
        else
            render :new
        end

    def delete
        @user = user.find(params[:id])
        @user.destroy

        redirect_to articles_path
    end
end
