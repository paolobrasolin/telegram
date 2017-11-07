module Telegram
  module API
    module Bot
      module Types
        # This object represents one shipping option.
        #
        # @!attribute [rw] id
        #   @return [String] Shipping option identifier
        # @!attribute [rw] title
        #   @return [String] Option title
        # @!attribute [rw] prices
        #   @return [Array<LabeledPrice>] List of price portions
        ShippingOption = Struct.new(:id, :title, :prices) do
          def initialize(id:, title:, prices:)
            super(id, title, prices)
          end
        end
      end
    end
  end
end
