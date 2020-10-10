class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @items = []
        @total = 0
    end

    def add_item(title, price, quantity = 1)
        self.total += (price * quantity)
            quantity.times do 
             items << title
        end
        self.last_transaction = quantity * price
    end

    def apply_discount
       if discount != 0
        self.total = (total * (100 - discount.to_f ) * 0.01).to_i
        "After the discount, the total comes to $#{total}."
       else
        "There is no discount to apply."
       end
    end

    def void_last_transaction
        self.total = self.total - last_transaction 
     end
end