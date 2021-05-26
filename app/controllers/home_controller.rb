class HomeController < ApplicationController
  def index
  	@api = StockQuote::Stock.new(api_key: 'pk_63eaa71493e04f1e91fbd7d466c44f70')
  	
  	if params[:ticker] == ""
  		@nothing = "No company was entered!"
  	elsif params[:ticker]
  		begin @stock = StockQuote::Stock.quote(params[:ticker])
  		rescue 
  		@error = "That stock symbol doesn't exist"
  		else 
  		p "No error"
  		ensure
  		p "Done"
  		end
   	 end
  end

  def about
  end

end
