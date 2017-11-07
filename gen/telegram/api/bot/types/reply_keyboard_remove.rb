module Telegram
  module API
    module Bot
      module Types
        # Upon receiving a message with this object, Telegram clients will remove the current custom keyboard and display the default letter-keyboard. By default, custom keyboards are displayed until a new keyboard is sent by a bot. An exception is made for one-time keyboards that are hidden immediately after the user presses a button (see ReplyKeyboardMarkup).
        #
        # @!attribute [rw] remove_keyboard
        #   @return [True] Requests clients to remove the custom keyboard (user will not be able to summon this keyboard; if you want to hide the keyboard from sight but keep it accessible, use _one_time_keyboard_ in ReplyKeyboardMarkup)
        # @!attribute [rw] selective
        #   @return [Boolean] _Optional_. Use this parameter if you want to remove the keyboard for specific users only. Targets: 1) users that are @mentioned in the _text_ of the Message object; 2) if the bot's message is a reply (has _reply_to_message_id_), sender of the original message.<br><br>_Example:_ A user votes in a poll, bot returns confirmation message in reply to the vote and removes the keyboard for that user, while still showing the keyboard with poll options to users who haven't voted yet.
        ReplyKeyboardRemove = Struct.new(:remove_keyboard, :selective) do
          def initialize(remove_keyboard:, selective: nil)
            super(remove_keyboard, selective)
          end
        end
      end
    end
  end
end
