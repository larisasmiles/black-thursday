# require_relative 'test_helper'
# Module SalesEngineSetup
#   attr_reader :Sales_engine
#
#   def setup
#     @sales_engine    = load_sales_engine_data
#     @se              = @sales_engine
#   end
#
#   def load_sales_engine_data
#     SalesEngine.from_csv({
#       :items        => "./data/items.csv",
#       :merchants    => "./data/merchants.csv",
#       })
#   end
