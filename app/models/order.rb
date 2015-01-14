class Order < ActiveRecord::Base
	has_many :line_items, dependent: :destroy
	PAYMENT_TYPES = [ "Check", "Credit Card", "Purchase order" ]

	validates :name, :address, :email, presence: true
	validates :pay_type, inclusion: PAYMENT_TYPES


	def add_line_items_from_cart(cart)
		cart.line_items.each do |item| # Loop through each item
			item.cart_id = nil		   # Set cart_id to nil
			line_items << item		   # add item to line_items collection for the order
		end
	end
end
