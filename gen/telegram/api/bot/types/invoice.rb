module Telegram
  module API
    module Bot
      module Types
        # This object contains basic information about an invoice.
        #
        # @!attribute [rw] title
        #   @return [String] Product name
        # @!attribute [rw] description
        #   @return [String] Product description
        # @!attribute [rw] start_parameter
        #   @return [String] Unique bot deep-linking parameter that can be used to generate this invoice
        # @!attribute [rw] currency
        #   @return [String] Three-letter ISO 4217 {https://core.telegram.org/bots/payments#supported-currencies currency} code
        # @!attribute [rw] total_amount
        #   @return [Integer] Total price in the _smallest units_ of the currency (integer, *not* float/double). For example, for a price of <code>US$ 1.45</code> pass <code>amount = 145</code>. See the _exp_ parameter in {https://core.telegram.org/bots/payments/currencies.json currencies.json}, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
        Invoice = Struct.new(:title, :description, :start_parameter, :currency, :total_amount) do
          def initialize(title:, description:, start_parameter:, currency:, total_amount:)
            super(title, description, start_parameter, currency, total_amount)
          end
        end
      end
    end
  end
end
