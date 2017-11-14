# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#replykeyboardmarkup official documentation}.
        #
        # @!attribute [rw] keyboard
        #   @return [Array<Array<KeyboardButton>>]
        # @!attribute [rw] resize_keyboard
        #   @return [Boolean, nil]
        # @!attribute [rw] one_time_keyboard
        #   @return [Boolean, nil]
        # @!attribute [rw] selective
        #   @return [Boolean, nil]
        ReplyKeyboardMarkup = Struct.new(
          :keyboard,
          :resize_keyboard,
          :one_time_keyboard,
          :selective
        ) do
          def initialize(
            keyboard:,
            resize_keyboard: nil,
            one_time_keyboard: nil,
            selective: nil
          )
            super(
              keyboard&.to_a&.map { |a| a.to_a.map { |o| KeyboardButton.new(**o.to_h) } },
              (!!resize_keyboard unless resize_keyboard.nil?),
              (!!one_time_keyboard unless one_time_keyboard.nil?),
              (!!selective unless selective.nil?)
            )
          end
        end
      end
    end
  end
end
