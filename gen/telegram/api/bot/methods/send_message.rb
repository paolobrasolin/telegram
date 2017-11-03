module Telegram
  module API
    module Bot
      module Methods
        # Use this method to send text messages. On success, the sent Message is returned.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param text [String] Text of the message to be sent
        # @param parse_mode [String] Send _Markdown_ or _HTML_, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in your bot's message.
        # @param disable_web_page_preview [Boolean] Disables link previews for links in this message
        # @param disable_notification [Boolean] Sends the message {https://telegram.org/blog/channels-2-0#silent-messages silently}. Users will receive a notification with no sound.
        # @param reply_to_message_id [Integer] If the message is a reply, ID of the original message
        # @param reply_markup [InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply] Additional interface options. A JSON-serialized object for an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}, {https://core.telegram.org/bots#keyboards custom reply keyboard}, instructions to remove reply keyboard or to force a reply from the user.
        def self.send_message(
          chat_id:,
          text:,
          parse_mode: nil,
          disable_web_page_preview: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
        end
      end
    end
  end
end
