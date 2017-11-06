module Telegram
  module API
    module Bot
      module Methods
        # Use this method for your bot to leave a group, supergroup or channel. Returns _True_ on success.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target supergroup or channel (in the format <code>@channelusername</code>)
        def leave_chat(
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
