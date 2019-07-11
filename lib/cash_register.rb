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
    if @discount != 0
      @total = @total.to_f * (1 - @discount.to_f / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end 
  end
end
