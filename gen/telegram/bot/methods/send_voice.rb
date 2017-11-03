module Telegram
  module Bot
    module Methods
      # Use this method to send audio files, if you want Telegram clients to display the file as a playable voice message. For this to work, your audio must be in an .ogg file encoded with OPUS (other formats may be sent as Audio or Document). On success, the sent Message is returned. Bots can currently send voice messages of up to 50 MB in size, this limit may be changed in the future.
      #
      # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
      # @param voice [InputFile or String] Audio file to send. Pass a file_id as String to send a file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
      # @param caption [String] Voice message caption, 0-200 characters
      # @param duration [Integer] Duration of the voice message in seconds
      # @param disable_notification [Boolean] Sends the message {https://telegram.org/blog/channels-2-0#silent-messages silently}. Users will receive a notification with no sound.
      # @param reply_to_message_id [Integer] If the message is a reply, ID of the original message
      # @param reply_markup [InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply] Additional interface options. A JSON-serialized object for an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}, {https://core.telegram.org/bots#keyboards custom reply keyboard}, instructions to remove reply keyboard or to force a reply from the user.
      def self.send_voice(
        chat_id:,
        voice:,
        caption: nil,
        duration: nil,
        disable_notification: nil,
        reply_to_message_id: nil,
        reply_markup: nil
      )
      end
    end
  end
end
