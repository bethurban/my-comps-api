class Api::SearchesController < ApplicationController

  before_action :set_search, only: [:show, :update, :destroy]

  def index
    render json: Search.all
  end

  def create
    search = Search.new(search_params)
    if search.save
      render json: search
    else
      render json: { message: search.errors }, status: 400
    end
  end

  def show
    render json: @search
  end

  def update
    if @search.update(search_params)
      render json: @search
    else
      render json: { message: @search.errors }, status: 400
    end
  end

  def destroy
    if @search.destroy
      render status: 204
    else
      render json: { message: "Unable to destroy this search" }, status: 400
    end
  end

  private

    def set_search
      @search = Search.find_by(id: params[:id])
    end

    def search_params
      params.permit([:name, :address])
    end
end
