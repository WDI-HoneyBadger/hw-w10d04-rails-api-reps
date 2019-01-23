class QuotesController < ApplicationController
    # before_action :set_quot, only: [:show, :update, :destroy]


    def index 
       
       @quote = Quote.all 
        render json: @quote
    end 

    def show 
        @quote = Quote.find(params[:id])
        render json: @quote
    end 

    def create 
        @quote = Quote.create(quote_params)
        # byebug # as a console - will stop the code ? 
        render json: @quote
    end 

    def destroy 
        @quote = Quote.find(params[:id])
        @quote.destroy
        render json:{message:"SUCCESS"}
         # there are many ways, this way is better because 
          # we names the method destroy instead of delete because Rails allow us to do a trick instead of w
    end 

    def update 
        @quote = Quote.find(params[:id])
        @quote.update_attributes(quote_params)
        render json: @quote
    end 

    # this method is made to make the code more DRY insetad of writing this line in each method we will only write the name of the method.
    def set_quot
        @quote = Quote.find(params[:id])
    end 

 
private 

    def quote_params # this is a strong paramter 
        params.require(:quote).permit( #its saying if there is no key for pokemon send an error. pemrit is saying 
        content:string, author:string,  category:string
        )
        #  this method doesnt allow user to add things that doesnt exist for example if i want to add fav color i cant because it set it here 
      end
def quote_query_params
    params.premit( 
        
    )


         #@ means its acceccable within the class 
         #strong - our param has to have this key 
         # controller callbacks 

end

end
