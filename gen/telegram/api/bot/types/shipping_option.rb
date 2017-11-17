# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#shippingoption official documentation}.
        #
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] prices
        #   @return [Array<LabeledPrice>]
        ShippingOption = Struct.new(
          :id,
          :title,
          :prices
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            id:,
            title:,
            prices:
          )
            super(
              id&.to_s,
              title&.to_s,
              prices&.to_a&.map { |o| Types::LabeledPrice.new(**o.to_h) }
            )
          end
        end
      end
    end
  end
end
