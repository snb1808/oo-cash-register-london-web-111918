class CashRegister

attr_accessor :total, :discount
attr_reader :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @total += (price*quantity)
    @price = price
    @title = title
quantity.times {@items << @title}
  end

  def apply_discount
    if @discount != 0
    @total *= (100.to_f - @discount.to_f) / 100.to_f
    "After the discount, the total comes to $#{@total.to_i}."
    else
   "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end
