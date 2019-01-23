class QuoteController < ApplicationController
    before_action :set_quote, only: [:show, :update, :destroy]
    def index
        @Quote = Quote.where(quote_query_params)
        render json: @Quote
    end
    
    def show
        render json: @Quote
    end

    def create
        @Quote = Quote.create(quote_params)
        render json: @Quote
    end

    def update
        @Quote.update_attributes(quote_params)
        render json: @Quote
    end

    def destroy
        @Quote.destroy
        render json: {message: "Successful Delete!"}
    end
    
    private
    def set_quote
        @Quote = Quote.find(params[:id])
    end

    def quote_params
        params.require(:quote).permit(
            :content, :author, :category
        )
      end

      def quote_query_params
        params.permit(
            :content, :author, :category
        )
      end
end
