# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinekeyboardmarkup official documentation}.
        #
        # @!attribute [rw] inline_keyboard
        #   @return [Array<Array<InlineKeyboardButton>>]
        InlineKeyboardMarkup = Struct.new(
          :inline_keyboard
        ) do
          def initialize(
            inline_keyboard:
          )
            super(
              inline_keyboard&.to_a&.map { |a| a.to_a.map { |o| InlineKeyboardButton.new(**o.to_h) } }
            )
          end
        end
      end
    end
  end
end
