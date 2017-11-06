module Telegram
  module API
    module Bot
      module Methods
        # Use this method to get information about a member of a chat. Returns a ChatMember object on success.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target supergroup or channel (in the format <code>@channelusername</code>)
        # @param user_id [Integer] Unique identifier of the target user
        def get_chat_member(
          chat_id:,
          user_id:
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
