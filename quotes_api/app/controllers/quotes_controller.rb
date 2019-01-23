class QuotesController < ApplicationController
    before_action :set_quote, only:[:show, :update, :destroy]

    def index 
    
        @quotes = Quote.all

        render json: @quotes

    end

    #=============

    def show 
    
        render json: @quotes

    end

    #=============

    def create

        render json: @quotes

    end

    #=============

    def update

        @quotes.update_attributes(quotes_params)

        render json: @quotes

    end

    #=============

    def destroy 

        @quotes.destroy

        render json: {message: "SECCESS"}


    end

    #=============

    private

    def set_quote
        @quotes = Quote.find(params[:id])
    end

    def quote_params
            params.require(:quote).permit(
              
            )
          end
end
