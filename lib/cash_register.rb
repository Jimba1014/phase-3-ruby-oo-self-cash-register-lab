class CashRegister

    attr_accessor :total, :discount, :items, :purchase


    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.purchase = price * quantity
        self.total += self.purchase
        quantity.times do
          self.items << title
        end
      end
    def apply_discount
        if self.discount != 0
            discount_percent = (100.0 - self.discount)/ 100 
            self.total = (self.total * discount_percent).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end

    end


end
