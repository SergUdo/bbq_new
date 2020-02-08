class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  before_action :set_user, only: %i[show edit update]

  def show; end

  def edit; end

  def update
    if @user.update(user_params)
      redirect_to @event, notice: I18n.t('controllers.users.updated')
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_current_user
    @user = current_user
  end
end
