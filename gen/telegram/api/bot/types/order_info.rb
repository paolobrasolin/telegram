module Telegram
  module API
    module Bot
      module Types
        # This object represents information about an order.
        #
        # @!attribute [rw] name
        #   @return [String] _Optional_. User name
        # @!attribute [rw] phone_number
        #   @return [String] _Optional_. User's phone number
        # @!attribute [rw] email
        #   @return [String] _Optional_. User email
        # @!attribute [rw] shipping_address
        #   @return [ShippingAddress] _Optional_. User shipping address
        OrderInfo = Struct.new(:name, :phone_number, :email, :shipping_address) do
          def initialize(name:, phone_number:, email:, shipping_address:)
            super(name, phone_number, email, shipping_address)
          end
        end
      end
    end
  end
end
