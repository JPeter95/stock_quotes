class StockQuotesController < ApplicationController
  def index
    @state = params[:state] || 'md'
    @reps = Representative.for(@state.upcase!).
      sort_by {|rep| rep['name']}
  end
end
