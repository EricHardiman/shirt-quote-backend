class Api::V1::ImagesController < ApplicationController
  def create
    image = Image.find_or_create_by(images_params)
    render json:image
  end

  def destroy
    image = Image.find(params[:id])
    image.destroy
  end

  private

  def images_params
    params.require(:image).permit(:url, :quote_id)
  end
end
