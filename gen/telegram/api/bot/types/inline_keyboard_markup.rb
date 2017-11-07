module Telegram
  module API
    module Bot
      module Types
        # This object represents an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard} that appears right next to the message it belongs to.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will display _unsupported message_.
        #
        # @!attribute [rw] inline_keyboard
        #   @return [Array<Array<InlineKeyboardButton>>] Array of button rows, each represented by an Array of InlineKeyboardButton objects
        InlineKeyboardMarkup = Struct.new(:inline_keyboard) do
          def initialize(inline_keyboard:)
            super(inline_keyboard)
          end
        end
      end
    end
  end
end
