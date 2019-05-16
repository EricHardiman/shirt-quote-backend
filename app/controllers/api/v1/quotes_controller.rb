class Api::V1::QuotesController < ApplicationController
  skip_before_action :authorized
  def index
    quotes = Quote.all
    render json:quotes
  end

  def create
    quote = Quote.create(quote_params)
    render json:quote
  end

  def update
    quote = Quote.find(params[:id])
    quote.update(quote_params)
    render json:quote
  end

  def get_quote
    quote = Quote.find_by(quote_number: params[:id])
    render json:quote
  end

  def destroy
    quote = Quote.find_by(quote_number: params[:id])
    quote.destroy
    render json:quote
  end

  def all_quotes
    quotes = Quote.all
    render json:quotes
  end

  private

  def quote_params
    params.require(:quote).permit(:full_name, :org_name, :add_one, :add_two, :city, :state, :zipcode, :country, :email, :status, :quote_number, :sizes, :notes, :front, :back, :color, :shirt_type, :user_id)
  end
end
