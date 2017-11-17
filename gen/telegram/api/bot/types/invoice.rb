# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#invoice official documentation}.
        #
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] description
        #   @return [String]
        # @!attribute [rw] start_parameter
        #   @return [String]
        # @!attribute [rw] currency
        #   @return [String]
        # @!attribute [rw] total_amount
        #   @return [Integer]
        Invoice = Struct.new(
          :title,
          :description,
          :start_parameter,
          :currency,
          :total_amount
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            title:,
            description:,
            start_parameter:,
            currency:,
            total_amount:
          )
            super(
              title&.to_s,
              description&.to_s,
              start_parameter&.to_s,
              currency&.to_s,
              total_amount&.to_i
            )
          end
        end
      end
    end
  end
end
