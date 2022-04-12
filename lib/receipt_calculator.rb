class ReceiptCalculator
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(name:, quantity:, price:)
    items.push({name: name, quantity: quantity, price: price})
  end

  def total
    items.inject(0) { |sum, item| sum + item[:quantity] * item[:price] }
  end
end
