class Api::V1::StylesController < ApplicationController
  skip_before_action :authorized
  def index
    all_styles = Style.all
    render json: all_styles
  end

  def show
    style = Style.find(params[:id])
    render json:style
  end
end
