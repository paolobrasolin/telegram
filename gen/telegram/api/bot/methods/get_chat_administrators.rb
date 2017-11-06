module Telegram
  module API
    module Bot
      module Methods
        # Use this method to get a list of administrators in a chat. On success, returns an Array of ChatMember objects that contains information about all chat administrators except other bots. If the chat is a group or a supergroup and no administrators were appointed, only the creator will be returned.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target supergroup or channel (in the format <code>@channelusername</code>)
        def get_chat_administrators(
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
