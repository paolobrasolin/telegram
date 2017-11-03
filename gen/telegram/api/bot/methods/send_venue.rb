module Telegram
  module API
    module Bot
      module Methods
        # Use this method to send information about a venue. On success, the sent Message is returned.
        #
        # @param chat_id [Integer or String] Unique identifier for the target chat or username of the target channel (in the format <code>@channelusername</code>)
        # @param latitude [Float] Latitude of the venue
        # @param longitude [Float] Longitude of the venue
        # @param title [String] Name of the venue
        # @param address [String] Address of the venue
        # @param foursquare_id [String] Foursquare identifier of the venue
        # @param disable_notification [Boolean] Sends the message {https://telegram.org/blog/channels-2-0#silent-messages silently}. Users will receive a notification with no sound.
        # @param reply_to_message_id [Integer] If the message is a reply, ID of the original message
        # @param reply_markup [InlineKeyboardMarkup or ReplyKeyboardMarkup or ReplyKeyboardRemove or ForceReply] Additional interface options. A JSON-serialized object for an {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating inline keyboard}, {https://core.telegram.org/bots#keyboards custom reply keyboard}, instructions to remove reply keyboard or to force a reply from the user.
        def self.send_venue(
          chat_id:,
          latitude:,
          longitude:,
          title:,
          address:,
          foursquare_id: nil,
          disable_notification: nil,
          reply_to_message_id: nil,
          reply_markup: nil
        )
        end
      end
    end
  end
end
