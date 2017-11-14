# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#replykeyboardremove official documentation}.
        #
        # @!attribute [rw] remove_keyboard
        #   @return [TrueClass]
        # @!attribute [rw] selective
        #   @return [Boolean, nil]
        ReplyKeyboardRemove = Struct.new(
          :remove_keyboard,
          :selective
        ) do
          def initialize(
            remove_keyboard:,
            selective: nil
          )
            super(
              (!!remove_keyboard unless remove_keyboard.nil?),
              (!!selective unless selective.nil?)
            )
          end
        end
      end
    end
  end
end
