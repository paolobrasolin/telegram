module Telegram
  module Bot
    module Methods
      # Use this method to change the description of a supergroup or a channel. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns _True_ on success.
      #
      # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
      # @param description [String] New chat description, 0-255 characters
      def self.set_chat_description(
        chat_id:,
        description: nil
      )
      end
    end
  end
end
