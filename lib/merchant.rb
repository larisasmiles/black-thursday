class Merchant
  attr_reader :id, :name, :created_at, :updated_at

  def initialize(attributes)
    @id            = attributes[:id].to_i
    @name          = attributes[:name]
    @created_at    = attributes[:created_at]#Time.parse?
    @updated_at    = attributes[:updated_at]#Time.parse?
  end

  def find_all_by_merchant_id(id)
  end

  def invoices
    find_all_by_merchant_id(id)
  end


end
