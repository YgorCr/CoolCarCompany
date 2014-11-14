class User < ActiveRecord::Base
	has_one :shop_cart
end
