module Telegram
  module API
    module Bot
      module Types
        # This object represents a portion of the price for goods or services.
        #
        # @!attribute [rw] label
        #   @return [String] Portion label
        # @!attribute [rw] amount
        #   @return [Integer] Price of the product in the _smallest units_ of the {https://core.telegram.org/bots/payments#supported-currencies currency} (integer, *not* float/double). For example, for a price of <code>US$ 1.45</code> pass <code>amount = 145</code>. See the _exp_ parameter in {https://core.telegram.org/bots/payments/currencies.json currencies.json}, it shows the number of digits past the decimal point for each currency (2 for the majority of currencies).
        LabeledPrice = Struct.new(:label, :amount) do
          def initialize(label:, amount:)
            super(label, amount)
          end
        end
      end
    end
  end
end
