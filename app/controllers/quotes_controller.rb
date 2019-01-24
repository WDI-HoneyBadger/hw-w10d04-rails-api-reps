class QuotesController < ApplicationController
    before_action :set_quote, only: [:show, :update, :destroy]
    
    def index
        @quote = Quote.all
        render json: @quote
    end

    def show 
        render json: @quote
    end

    def create
        @quote = Quote.create(pokemon_params)
        render json: @quote
    end

    def update 
        @quote.update_attributes(pokemon_params)
        render json: @quote
    end

    def quote_params
        params.require(:quotes).permit(
          :content, :author, :category
        )
    end

    def destroy
        @quote.destroy
        render json:{message: "SUCCESS!"}
    end   
    
    private
    def set_quote
        @quote = Quote.find(params[:id])
    end
end
