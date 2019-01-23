class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :update, :delete]

  def index
    @quotes = Quote.where(quote_query_params)
    render json: @quotes
  end

  def show
    @quote = Quote.find(params[:id])
    render json: @quote
  end

  def create
    @quote = Quote.create(quote_params)
    # byebug
    render json: @quote
  end

  def update
    @quote = Quote.find(params[:id])
    @quote.update_attributes(quote_params)
    render json: @quote
  end

  def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    render json: {message: "SUCCESS!"}
  end

  private

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(
      :content, :author, :category
    )
  end

  def quote_query_params
    params.permit(:content, :author, :category)
  end
end
