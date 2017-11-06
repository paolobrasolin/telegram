module Telegram
  module API
    module Bot
      module Methods
        # Use this method to delete a message, including service messages, with the following limitations:<br>- A message can only be deleted if it was sent less than 48 hours ago.<br>- Bots can delete outgoing messages in groups and supergroups.<br>- Bots granted _can_post_messages_ permissions can delete outgoing messages in channels.<br>- If the bot is an administrator of a group, it can delete any message there.<br>- If the bot has _can_delete_messages_ permission in a supergroup or a channel, it can delete any message there.<br>Returns _True_ on success.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param message_id [Integer] Identifier of the message to delete
        def delete_message(
          chat_id:,
          message_id:
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
