module Telegram
  module API
    module Bot
      module Methods
        # Use this method to delete a chat photo. Photos can't be changed for private chats. The bot must be an administrator in the chat for this to work and must have the appropriate admin rights. Returns _True_ on success.
        #
        # Note: In regular groups (non-supergroups), this method will only work if the ‘All Members Are Admins’ setting is off in the target group.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        def delete_chat_photo(
          chat_id:
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
