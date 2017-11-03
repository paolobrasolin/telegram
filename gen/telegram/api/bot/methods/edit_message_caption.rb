module Telegram
  module API
    module Bot
      module Methods
        # Use this method to edit captions of messages sent by the bot or via the bot (for inline bots). On success, if edited message is sent by the bot, the edited Message is returned, otherwise _True_ is returned.
        #
        # @param chat_id [Integer or String] Required if _inline_message_id_ is not specified. Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param message_id [Integer] Required if _inline_message_id_ is not specified. Identifier of the sent message
        # @param inline_message_id [String] Required if _chat_id_ and _message_id_ are not specified. Identifier of the inline message
        # @param caption [String] New caption of the message
        # @param reply_markup [InlineKeyboardMarkup] A JSON-serialized object for an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}.
        def self.edit_message_caption(
          chat_id: nil,
          message_id: nil,
          inline_message_id: nil,
          caption: nil,
          reply_markup: nil
        )
        end
      end
    end
  end
end
