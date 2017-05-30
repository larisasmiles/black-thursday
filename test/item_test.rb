require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'

class ItemTest < Minitest::Test

  def setup
    i = Item.new({
      :name        => "Pencil",
      :description => "You can use it to write things",
      :unit_price  => BigDecemal.new(10.99,4),
      :created_at  => Time.now,
      :updated_at  => Time.now,
      })
  end
end
