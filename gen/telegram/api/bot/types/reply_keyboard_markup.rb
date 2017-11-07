module Telegram
  module API
    module Bot
      module Types
        # This object represents a {https://core.telegram.org/bots#keyboards custom keyboard} with reply options (see {https://core.telegram.org/bots#keyboards Introduction to bots} for details and examples).
        #
        # @!attribute [rw] keyboard
        #   @return [Array<Array<KeyboardButton>>] Array of button rows, each represented by an Array of KeyboardButton objects
        # @!attribute [rw] resize_keyboard
        #   @return [Boolean] _Optional_. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to _false_, in which case the custom keyboard is always of the same height as the app's standard keyboard.
        # @!attribute [rw] one_time_keyboard
        #   @return [Boolean] _Optional_. Requests clients to hide the keyboard as soon as it's been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to _false_.
        # @!attribute [rw] selective
        #   @return [Boolean] _Optional_. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are @mentioned in the _text_ of the Message object; 2) if the bot's message is a reply (has _reply_to_message_id_), sender of the original message.<br><br>_Example:_ A user requests to change the bot‘s language, bot replies to the request with a keyboard to select the new language. Other users in the group don’t see the keyboard.
        ReplyKeyboardMarkup = Struct.new(:keyboard, :resize_keyboard, :one_time_keyboard, :selective) do
          def initialize(keyboard:, resize_keyboard:, one_time_keyboard:, selective:)
            super(keyboard, resize_keyboard, one_time_keyboard, selective)
          end
        end
      end
    end
  end
end
