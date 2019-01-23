class QuotesController < ApplicationController
   
    before_action :set_quote, only:[:show, :update, :destroy]

    def index 
        @quote = Quote.all
        render json: @quote

    end

    def show
        puts params.inspect
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
   

   def destroy
    @quote = Quote.find(params[:id])
    @quote.destroy
    render json: {message: "Success"}
   end

   private

   def quote_params
    params.require(:quote).permit(
      :content, :author, :category
    )
   end
end
