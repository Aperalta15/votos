class UsersController < ApplicationController
  before_action :user_params, except: [:index]
  def index
      @users = User.all
    end

    def show
      @personas = @user.persona
    end
    private
    def user_params
      @user = User.find(params[:id])
    end
end
