class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_menu_items
  has_many :menu_items, through: :order_menu_items
  
  def paypal_url(return_url)
   values = {    
    business: "nithuhaarish@gmail.com",
        cmd: "_xclick",
        upload: 1,
        return: "121.0.0.1",
        amount: self.bill_total,
        quantity: '1'
        }

         # For test transactions use this URL
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end 
  
end
