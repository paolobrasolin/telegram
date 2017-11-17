# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#successfulpayment official documentation}.
        #
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
        # @!attribute [rw] telegram_payment_charge_id
        #   @return [String]
        # @!attribute [rw] provider_payment_charge_id
        #   @return [String]
        SuccessfulPayment = Struct.new(
          :currency,
          :total_amount,
          :invoice_payload,
          :shipping_option_id,
          :order_info,
          :telegram_payment_charge_id,
          :provider_payment_charge_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            currency:,
            total_amount:,
            invoice_payload:,
            shipping_option_id: nil,
            order_info: nil,
            telegram_payment_charge_id:,
            provider_payment_charge_id:
          )
            super(
              currency&.to_s,
              total_amount&.to_i,
              invoice_payload&.to_s,
              (shipping_option_id&.to_s unless shipping_option_id.nil?),
              (Types::OrderInfo.new(**order_info.to_h) unless order_info.nil?),
              telegram_payment_charge_id&.to_s,
              provider_payment_charge_id&.to_s
            )
          end
        end
      end
    end
  end
end
