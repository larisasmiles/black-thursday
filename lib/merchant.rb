class Merchant
  attr_reader :id, :name, :created_at, :updated_at, :repo

  def initialize(attributes, repo)
    @id            = attributes[:id].to_i
    @name          = attributes[:name]
    @created_at    = attributes[:created_at]
    @updated_at    = attributes[:updated_at]
    @repo = repo
  end

  def items
    @repo.se.items.find_all_by_merchant_id(@id)
  end

end
