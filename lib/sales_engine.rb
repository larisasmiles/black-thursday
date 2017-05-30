class SalesEngine

  def initialize
    @items  => "./data/items.csv",
    @merchants => "./data/merchants.csv",
  })
  end
# Then let’s tie everything together with one common root, a SalesEngine instance:
#
# se = SalesEngine.from_csv({
#   :items     => "./data/items.csv",
#   :merchants => "./data/merchants.csv",
# })
# From there we can find the child instances:
#
# items returns an instance of ItemRepository with all the item instances loaded
# merchants returns an instance of MerchantRepository with all the merchant instances loaded

end
