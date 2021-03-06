class Invoice

  attr_reader :id, :customer_id, :merchant_id, :status, :created_at, :updated_at, :repo

  def initialize(data, repo)
    @id          = data[:id].to_i
    @customer_id = data[:customer_id]
    @merchant_id = data[:merchant_id]
    @status      = data[:status]
    @created_at  = data[:created_at]
    @updated_at  = data[:updated_at]
    @repo        = repo
  end

  def merchant
    id.pass_to_se(merchant_id)
  end
end
