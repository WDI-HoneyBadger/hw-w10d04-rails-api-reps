class QuoteController < ApplicationController


        def index
        
            render plain: "welcome to my site!"
        end 
        
        def show 
            pats params.inspect
            render plain 
        
        end
        
end
