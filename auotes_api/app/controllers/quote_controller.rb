class QuoteController < ApplicationController

    before_action :set_quote, only: [:Show, :update, :destroy]
    def index
        @quote = Quote.all
        render json: @quote
    end 

    def show
        @quote = Quote.find(params[:id])
        render json: @quote
    end

    def create
        @quote = Quote.create(quote.params)
        render json: @quote
    end

    def destroy

        @quote = Quote.find(params[:id])
        @quote.destroy
        render json: {message: "SUCCESS!"}
    
    end


    def update
        @quote = Quote.find(params[:id])
        @quote.update_attributes(quote_params)
        render json: @quote
    end



    private

    def set_quote

        @quote = Quote.find(params[:id])
    end
    def quote_params
        params.require(:quote).permit(
          :content, :author, :category)
    end

end
