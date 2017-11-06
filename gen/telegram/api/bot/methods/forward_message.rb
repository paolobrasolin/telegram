module Telegram
  module API
    module Bot
      module Methods
        # Use this method to forward messages of any kind. On success, the sent Message is returned.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param from_chat_id [Integer or String] Unique identifier for the chat where the original message was sent (or channel username in the format <code>@channelusername</code>)
        # @param disable_notification [Boolean] Sends the message {https://telegram.org/blog/channels-2-0#silent-messages silently}. Users will receive a notification with no sound.
        # @param message_id [Integer] Message identifier in the chat specified in _from_chat_id_
        def forward_message(
          chat_id:,
          from_chat_id:,
          disable_notification: nil,
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
