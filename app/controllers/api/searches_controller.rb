class Api::HomesController < ApplicationController

  before_action :set_home, only: [:show, :update, :destroy]

  def index
    render json: Home.all
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

  def update
    if @home.update(home_params)
      render json: @home
    else
      render json: { message: @home.errors }, status: 400
    end
  end

  def destroy
    if @home.destroy
      render status: 204
    else
      render json: { message: "Unable to destroy this saved home" }, status: 400
    end
  end

  private

    def set_home
      @home = Home.find_by(id: params[:id])
    end

    def home_params
      params.permit([:name, :address])
    end
end
