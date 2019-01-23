class QoutesController < ApplicationController
  def index
    @quotes = Quotes.all
    render json: @quotes

  end

  def show
    @quotes = Quotes.find(params[:id])
    render json: @quotes

  end

  def new
    @quotes = Quotes.create(quotes_params)
    render json: @quotes

  end

  def edit
    @quotes  = Quotes .find(params[:id])
    @quotes .update_attributes(quotes_params)
    render json: @quotes 

  end
end
