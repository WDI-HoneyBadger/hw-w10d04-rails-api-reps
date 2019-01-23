class QuotesController < ApplicationController
    before_action :set_quote, only: [:show, :update, :destroy]

    def index
        @quote = Quote.where(quote_query_params)
        render json: @quote
    end
    
    def show
        render json: @quote
    end

    def create
        @quote = Quote.create(quote_params)
        render json: @quote
    end

    def update
        @quote.update_attributes(quote_params)
        render json: @quote
    end

    def destroy
       @quote.destroy
       render plain: "DELETE SUCCESS!!" 
    end

    private
    def set_quote
        @quote = Quote.find(params[:id])
    end

    def quote_params
        params.require(:quote).permit(:content, :author, :category)        
    end

    def quote_query_params
        params.permit(:content, :author, :category) 
    end

end