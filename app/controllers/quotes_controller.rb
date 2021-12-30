class QuotesController < ApplicationController
  def index
    puts "===CALLING QUOTES#INDEX"
    @quotes = Quote.all
  end

  def show
    puts "===CALLING QUOTES#SHOW"
    @quotes = Quote.all
    @quote = Quote.find(params[:id])
    @user = User.find(@quote.user_id)
  end

  def new
    @quote = Quote.new
  end
  
  def create
    @quote = Quote.new(quote_params)

    if @quote.save
      puts "===save sucessful"
      redirect_to @quote
    else
      puts "Trying to save...%s" % [@quote.save]
      puts "===save error"
      render :new, status: :unprocessable_entity
    end
  end

  private
  def quote_params
    puts "===in quote_params cb. %s" % [:quote.inspect]
    params.require(:quote).permit(:body, :author).merge(user_id: session[:user_id])
  end
end
