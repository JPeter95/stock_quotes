class StockQuotesController < ApplicationController
  def index
    @symbols = params[:symbols] || 'fb,aapl'
    @stocks = StockQuote.for(@symbols).
      sort_by {|stock| stock['symbol']}
  end
end