module Telegram
  module API
    module Bot
      module Types
        # This object represents one button of an inline keyboard. You *must* use exactly one of the optional fields.
        #
        # @!attribute [rw] text
        #   @return [String] Label text on the button
        # @!attribute [rw] url
        #   @return [String] _Optional_. HTTP url to be opened when button is pressed
        # @!attribute [rw] callback_data
        #   @return [String] _Optional_. Data to be sent in a callback query to the bot when button is pressed, 1-64 bytes
        # @!attribute [rw] switch_inline_query
        #   @return [String] _Optional_. If set, pressing the button will prompt the user to select one of their chats, open that chat and insert the bot‘s username and the specified inline query in the input field. Can be empty, in which case just the bot’s username will be inserted.<br><br>*Note:* This offers an easy way for users to start using your bot in {https://core.telegram.org/bots/inline inline mode} when they are currently in a private chat with it. Especially useful when combined with _switch_pm…_ actions – in this case the user will be automatically returned to the chat they switched from, skipping the chat selection screen.
        # @!attribute [rw] switch_inline_query_current_chat
        #   @return [String] _Optional_. If set, pressing the button will insert the bot‘s username and the specified inline query in the current chat's input field. Can be empty, in which case only the bot’s username will be inserted.<br><br>This offers a quick way for the user to open your bot in inline mode in the same chat – good for selecting something from multiple options.
        # @!attribute [rw] callback_game
        #   @return [CallbackGame] _Optional_. Description of the game that will be launched when the user presses the button.<br><br>*NOTE:* This type of button *must* always be the first button in the first row.
        # @!attribute [rw] pay
        #   @return [Boolean] _Optional_. Specify True, to send a Pay button.<br><br>*NOTE:* This type of button *must* always be the first button in the first row.
        InlineKeyboardButton = Struct.new(:text, :url, :callback_data, :switch_inline_query, :switch_inline_query_current_chat, :callback_game, :pay) do
          def initialize(text:, url: nil, callback_data: nil, switch_inline_query: nil, switch_inline_query_current_chat: nil, callback_game: nil, pay: nil)
            super(text, url, callback_data, switch_inline_query, switch_inline_query_current_chat, callback_game, pay)
          end
        end
      end
    end
  end
end
