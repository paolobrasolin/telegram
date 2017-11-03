module Telegram
  module Bot
    module Methods
      # Use this method when you need to tell the user that something is happening on the bot's side. The status is set for 5 seconds or less (when a message arrives from your bot, Telegram clients clear its typing status). Returns _True_ on success.
      #
      # Example: The {https://t.me/imagebot ImageBot} needs some time to process a request and upload the image. Instead of sending a text message along the lines of “Retrieving image, please wait…”, the bot may use sendChatAction with _action_ = _upload_photo_. The user will see a “sending photo” status for the bot.
      #
      # We only recommend using this method when a response from the bot will take a *noticeable* amount of time to arrive.
      #
      # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
      # @param action [String] Type of action to broadcast. Choose one, depending on what the user is about to receive: _typing_ for text messages, _upload_photo_ for photos, _record_video_ or _upload_video_ for videos, _record_audio_ or _upload_audio_ for audio files, _upload_document_ for general files, _find_location_ for location data, _record_video_note_ or _upload_video_note_ for video notes.
      def self.send_chat_action(
        chat_id:,
        action:
      )
      end
    end
  end
end
