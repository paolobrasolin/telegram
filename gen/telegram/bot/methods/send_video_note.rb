module Telegram
  module Bot
    module Methods
      # As of {https://telegram.org/blog/video-messages-and-telescope v.4.0}, Telegram clients support rounded square mp4 videos of up to 1 minute long. Use this method to send video messages. On success, the sent Message is returned.
      #
      # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
      # @param video_note [InputFile or String] Video note to send. Pass a file_id as String to send a video note that exists on the Telegram servers (recommended) or upload a new video using multipart/form-data. More info on Sending Files ». Sending video notes by a URL is currently unsupported
      # @param duration [Integer] Duration of sent video in seconds
      # @param length [Integer] Video width and height
      # @param disable_notification [Boolean] Sends the message {https://telegram.org/blog/channels-2-0#silent-messages silently}. Users will receive a notification with no sound.
      # @param reply_to_message_id [Integer] If the message is a reply, ID of the original message
      # @param reply_markup [InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply] Additional interface options. A JSON-serialized object for an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}, {https://core.telegram.org/bots#keyboards custom reply keyboard}, instructions to remove reply keyboard or to force a reply from the user.
      def self.send_video_note(
        chat_id:,
        video_note:,
        duration: nil,
        length: nil,
        disable_notification: nil,
        reply_to_message_id: nil,
        reply_markup: nil
      )
      end
    end
  end
end
