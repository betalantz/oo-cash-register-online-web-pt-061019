class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title,price, quantity = 1)
    @total += (price * quantity)
  end

  def apply_discount
    @total = @total.to_f * (1 - @discount.to_f / 100.0)
  end
end
