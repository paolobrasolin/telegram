# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#shippingquery official documentation}.
        #
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] from
        #   @return [User]
        # @!attribute [rw] invoice_payload
        #   @return [String]
        # @!attribute [rw] shipping_address
        #   @return [ShippingAddress]
        ShippingQuery = Struct.new(
          :id,
          :from,
          :invoice_payload,
          :shipping_address
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            id:,
            from:,
            invoice_payload:,
            shipping_address:
          )
            super(
              id&.to_s,
              Types::User.new(**from.to_h),
              invoice_payload&.to_s,
              Types::ShippingAddress.new(**shipping_address.to_h)
            )
          end
        end
      end
    end
  end
end
