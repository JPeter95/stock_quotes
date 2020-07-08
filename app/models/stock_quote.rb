class StockQuote
  include HTTParty
  include JSON

  default_params output: 'json'
  format :json

  def self.for symbols
  	symbolData = []
  	symbols.to_s.split(',').each do |symbol|
    	response = HTTParty.get('https://cloud.iexapis.com/stable/stock/' + symbol + '/quote?token=pk_d054ad107a194c60b6fc49d1db52ea4d')
    	symbolData << JSON.parse(response.body)
    end
    symbolData
  end
end