class QuotesController < ApplicationController

    before_action :set_quote, only: [:show, :update, :destroy
]
    def index 
        @quote= Quote.all
        render json: @quote
        
    end 
    def show
        @quote = Quote.find(params[:id])
        render json: @quote
    end
    def create 
        @quote = Quote.create(quote_params)
        
        render json: @quote
    end
    
    def update 
        @quote = Quote.find(params[:id])
        @quote.update_attributes(quote_params)
        render json: @quote


    end

    def delete 
        @quote = Quote.find(params[:id])
        @quote.destroy
        render  plain: "delete abu ayony"  
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
