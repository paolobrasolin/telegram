module Telegram
  module API
    module Bot
      module Methods
        # Use this method to send .webp stickers. On success, the sent Message is returned.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param sticker [InputFile or String] Sticker to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a .webp file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
        # @param disable_notification [Boolean] Sends the message {https://telegram.org/blog/channels-2-0#silent-messages silently}. Users will receive a notification with no sound.
        # @param reply_to_message_id [Integer] If the message is a reply, ID of the original message
        # @param reply_markup [InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply] Additional interface options. A JSON-serialized object for an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}, {https://core.telegram.org/bots#keyboards custom reply keyboard}, instructions to remove reply keyboard or to force a reply from the user.
        def send_sticker(
          chat_id:,
          sticker:,
          disable_notification: nil,
          reply_to_message_id: nil,
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
