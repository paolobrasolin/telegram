# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#orderinfo official documentation}.
        #
        # @!attribute [rw] name
        #   @return [String, nil]
        # @!attribute [rw] phone_number
        #   @return [String, nil]
        # @!attribute [rw] email
        #   @return [String, nil]
        # @!attribute [rw] shipping_address
        #   @return [ShippingAddress, nil]
        OrderInfo = Struct.new(
          :name,
          :phone_number,
          :email,
          :shipping_address
        ) do
          def initialize(
            name: nil,
            phone_number: nil,
            email: nil,
            shipping_address: nil
          )
            super(
              (name&.to_s unless name.nil?),
              (phone_number&.to_s unless phone_number.nil?),
              (email&.to_s unless email.nil?),
              (ShippingAddress.new(**shipping_address.to_h) unless shipping_address.nil?)
            )
          end
        end
      end
    end
  end
end
