module Telegram
  module API
    module Bot
      module Methods
        # Use this method to change the title of a chat. Titles can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns _True_ on success.
        #
        # Note: In regular groups (non-supergroups), this method will only work if the ‘All Members Are Admins’ setting is off in the target group.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param title [String] New chat title, 1-255 characters
        def self.set_chat_title(
          chat_id:,
          title:
        )
        end
      end
    end
  end
end
