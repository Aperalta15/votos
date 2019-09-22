class UsersController < ApplicationController
  before_action :user_params, except: [:index]
  def index
      @users = current_user.lideres
    end

    def show
      @personas = @user.persona.order(id: :desc).page(params[:page])
    end

    private
    def user_params
      @user = User.find(params[:id])
    end
end
