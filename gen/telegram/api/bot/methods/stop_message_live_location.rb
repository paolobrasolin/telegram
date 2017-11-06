module Telegram
  module API
    module Bot
      module Methods
        # Use this method to stop updating a live location message sent by the bot or via the bot (for inline bots) before _live_period_ expires. On success, if the message was sent by the bot, the sent Message is returned, otherwise _True_ is returned.
        #
        # @param chat_id [Integer or String] Required if _inline_message_id_ is not specified. Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param message_id [Integer] Required if _inline_message_id_ is not specified. Identifier of the sent message
        # @param inline_message_id [String] Required if _chat_id_ and _message_id_ are not specified. Identifier of the inline message
        # @param reply_markup [InlineKeyboardMarkup] A JSON-serialized object for a new {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}.
        def stop_message_live_location(
          chat_id: nil,
          message_id: nil,
          inline_message_id: nil,
          reply_markup: nil
        )
          url = build_url method_name: __method__.to_s.delete('_')
          parameters = method_parameters_hash __method__, binding
          Telegram::API::Bot::Client.post url: url, parameters: parameters
        end
      end
    end
  end
end
