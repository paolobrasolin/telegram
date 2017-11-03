module Telegram
  module Bot
    module Methods
      # Use this method to pin a message in a supergroup. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns _True_ on success.
      #
      # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target supergroup (in the format <code>@supergroupusername</code>)
      # @param message_id [Integer] Identifier of a message to pin
      # @param disable_notification [Boolean] Pass _True_, if it is not necessary to send a notification to all group members about the new pinned message
      def self.pin_chat_message(
        chat_id:,
        message_id:,
        disable_notification: nil
      )
      end
    end
  end
end
