module Telegram
  module API
    module Bot
      module Types
        # This object contains information about an incoming pre-checkout query.
        #
        # @!attribute [rw] id
        #   @return [String] Unique query identifier
        # @!attribute [rw] from
        #   @return [User] User who sent the query
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
        PreCheckoutQuery = Struct.new(:id, :from, :currency, :total_amount, :invoice_payload, :shipping_option_id, :order_info) do
          def initialize(id:, from:, currency:, total_amount:, invoice_payload:, shipping_option_id: nil, order_info: nil)
            super(id, from, currency, total_amount, invoice_payload, shipping_option_id, order_info)
          end
        end
      end
    end
  end
end
