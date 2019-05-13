class Api::HomesController < ApplicationController

  before_action :set_home, only: [:show, :update, :destroy]

  def index
    @user = User.find_by(id: params[:user_id])
    render json: @user.homes
  end

  def create
    home = Home.new(home_params)
    if home.save
      render json: home
    else
      render json: { message: home.errors }, status: 400
    end
  end

  def show
    render json: @home
  end

  def destroy
    if @home.destroy
      render status: 204
    else
      render json: { message: "Unable to delete this saved address." }, status: 400
    end
  end

  private

    def set_home
      @home = Home.find_by(id: params[:id])
    end

    def home_params
      params.permit([:name, :address, :citystate, :user_id])
    end
end
