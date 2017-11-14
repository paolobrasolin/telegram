# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#labeledprice official documentation}.
        #
        # @!attribute [rw] label
        #   @return [String]
        # @!attribute [rw] amount
        #   @return [Integer]
        LabeledPrice = Struct.new(
          :label,
          :amount
        ) do
          def initialize(
            label:,
            amount:
          )
            super(
              label&.to_s,
              amount&.to_i
            )
          end
        end
      end
    end
  end
end
