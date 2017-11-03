module Telegram
  module API
    module Bot
      module Methods
        # Use this method to send audio files, if you want Telegram clients to display them in the music player. Your audio must be in the .mp3 format. On success, the sent Message is returned. Bots can currently send audio files of up to 50 MB in size, this limit may be changed in the future.
        #
        # For sending voice messages, use the sendVoice method instead.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param audio [InputFile or String] Audio file to send. Pass a file_id as String to send an audio file that exists on the Telegram servers (recommended), pass an HTTP URL as a String for Telegram to get an audio file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
        # @param caption [String] Audio caption, 0-200 characters
        # @param duration [Integer] Duration of the audio in seconds
        # @param performer [String] Performer
        # @param title [String] Track name
        # @param disable_notification [Boolean] Sends the message {https://telegram.org/blog/channels-2-0#silent-messages silently}. Users will receive a notification with no sound.
        # @param reply_to_message_id [Integer] If the message is a reply, ID of the original message
        # @param reply_markup [InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply] Additional interface options. A JSON-serialized object for an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}, {https://core.telegram.org/bots#keyboards custom reply keyboard}, instructions to remove reply keyboard or to force a reply from the user.
        def self.send_audio(
          chat_id:,
          audio:,
          caption: nil,
          duration: nil,
          performer: nil,
          title: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
        end
      end
    end
  end
end
