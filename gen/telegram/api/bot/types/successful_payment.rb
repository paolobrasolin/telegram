module Telegram
  module API
    module Bot
      module Types
        # This object contains basic information about a successful payment.
        #
        # @!attribute [rw] currency
        #   @return [String] Three-letter ISO 4217 {https://core.telegram.org/bots/payments#supported-currencies currency} code
        # @!attribute [rw] total_amount
        #   @return [Integer] Total price in the _smallest units_ of the currency (integer, *not* float/double). For example, for a price of <code>US$ 1.45</code> pass <code>amount = 145</code>. See the _exp_ parameter in {https://core.telegram.org/bots/payments/currencies.json currencies.json}, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
        # @!attribute [rw] invoice_payload
        #   @return [String] Bot specified invoice payload
        # @!attribute [rw] shipping_option_id
        #   @return [String] _Optional_. Identifier of the shipping option chosen by the user
        # @!attribute [rw] order_info
        #   @return [OrderInfo] _Optional_. Order info provided by the user
        # @!attribute [rw] telegram_payment_charge_id
        #   @return [String] Telegram payment identifier
        # @!attribute [rw] provider_payment_charge_id
        #   @return [String] Provider payment identifier
        SuccessfulPayment = Struct.new(:currency, :total_amount, :invoice_payload, :shipping_option_id, :order_info, :telegram_payment_charge_id, :provider_payment_charge_id) do
          def initialize(currency:, total_amount:, invoice_payload:, shipping_option_id:, order_info:, telegram_payment_charge_id:, provider_payment_charge_id:)
            super(currency, total_amount, invoice_payload, shipping_option_id, order_info, telegram_payment_charge_id, provider_payment_charge_id)
          end
        end
      end
    end
  end
end
