module Telegram
  module API
    module Bot
      module Methods
        # Use this method to set a new profile photo for the chat. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns _True_ on success.
        #
        # Note: In regular groups (non-supergroups), this method will only work if the ‘All Members Are Admins’ setting is off in the target group.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param photo [InputFile] New chat photo, uploaded using multipart/form-data
        def self.set_chat_photo(
          chat_id:,
          photo:
        )
        end
      end
    end
  end
end
