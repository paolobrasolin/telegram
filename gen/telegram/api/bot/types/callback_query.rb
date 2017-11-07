module Telegram
  module API
    module Bot
      module Types
        # This object represents an incoming callback query from a callback button in an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}. If the button that originated the query was attached to a message sent by the bot, the field _message_ will be present. If the button was attached to a message sent via the bot (in inline mode), the field _inline_message_id_ will be present. Exactly one of the fields _data_ or _game_short_name_ will be present.
        #
        # *NOTE:* After the user presses a callback button, Telegram clients will display a progress bar until you call answerCallbackQuery. It is, therefore, necessary to react by calling answerCallbackQuery even if no notification to the user is needed (e.g., without specifying any of the optional parameters).
        #
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this query
        # @!attribute [rw] from
        #   @return [User] Sender
        # @!attribute [rw] message
        #   @return [Message] _Optional_. Message with the callback button that originated the query. Note that message content and message date will not be available if the message is too old
        # @!attribute [rw] inline_message_id
        #   @return [String] _Optional_. Identifier of the message sent via the bot in inline mode, that originated the query.
        # @!attribute [rw] chat_instance
        #   @return [String] Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent. Useful for high scores in games.
        # @!attribute [rw] data
        #   @return [String] _Optional_. Data associated with the callback button. Be aware that a bad client can send arbitrary data in this field.
        # @!attribute [rw] game_short_name
        #   @return [String] _Optional_. Short name of a Game to be returned, serves as the unique identifier for the game
        CallbackQuery = Struct.new(:id, :from, :message, :inline_message_id, :chat_instance, :data, :game_short_name) do
          def initialize(id:, from:, message: nil, inline_message_id: nil, chat_instance:, data: nil, game_short_name: nil)
            super(id, from, message, inline_message_id, chat_instance, data, game_short_name)
          end
        end
      end
    end
  end
end
