# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#precheckoutquery official documentation}.
        #
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] from
        #   @return [User]
        # @!attribute [rw] currency
        #   @return [String]
        # @!attribute [rw] total_amount
        #   @return [Integer]
        # @!attribute [rw] invoice_payload
        #   @return [String]
        # @!attribute [rw] shipping_option_id
        #   @return [String, nil]
        # @!attribute [rw] order_info
        #   @return [OrderInfo, nil]
        PreCheckoutQuery = Struct.new(
          :id,
          :from,
          :currency,
          :total_amount,
          :invoice_payload,
          :shipping_option_id,
          :order_info
        ) do
          def initialize(
            id:,
            from:,
            currency:,
            total_amount:,
            invoice_payload:,
            shipping_option_id: nil,
            order_info: nil
          )
            super(
              id&.to_s,
              User.new(**from.to_h),
              currency&.to_s,
              total_amount&.to_i,
              invoice_payload&.to_s,
              (shipping_option_id&.to_s unless shipping_option_id.nil?),
              (OrderInfo.new(**order_info.to_h) unless order_info.nil?)
            )
          end
        end
      end
    end
  end
end
