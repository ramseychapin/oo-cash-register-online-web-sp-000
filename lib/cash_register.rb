class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @last_transaction = @total
    quantity.times do
      @items << title
    end
  end


  def apply_discount
    if @discount
      discount_amount = (@discount/100.to_f)
      @total = @total - (@total * @discount)
      return "After the discount, the total comes to $#{total.to_i}."
    else
      return "There is no discount to apply."
    end
  end


  def void_last_transaction
    @total -= @last_transaction
  end
end
