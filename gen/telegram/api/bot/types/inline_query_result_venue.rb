module Telegram
  module API
    module Bot
      module Types
        # Represents a venue. By default, the venue will be sent by the user. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the venue.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _venue_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 Bytes
        # @!attribute [rw] latitude
        #   @return [Float] Latitude of the venue location in degrees
        # @!attribute [rw] longitude
        #   @return [Float] Longitude of the venue location in degrees
        # @!attribute [rw] title
        #   @return [String] Title of the venue
        # @!attribute [rw] address
        #   @return [String] Address of the venue
        # @!attribute [rw] foursquare_id
        #   @return [String] _Optional_. Foursquare identifier of the venue if known
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the venue
        # @!attribute [rw] thumb_url
        #   @return [String] _Optional_. Url of the thumbnail for the result
        # @!attribute [rw] thumb_width
        #   @return [Integer] _Optional_. Thumbnail width
        # @!attribute [rw] thumb_height
        #   @return [Integer] _Optional_. Thumbnail height
        InlineQueryResultVenue = Struct.new(:type, :id, :latitude, :longitude, :title, :address, :foursquare_id, :reply_markup, :input_message_content, :thumb_url, :thumb_width, :thumb_height) do
          def initialize(type:, id:, latitude:, longitude:, title:, address:, foursquare_id: nil, reply_markup: nil, input_message_content: nil, thumb_url: nil, thumb_width: nil, thumb_height: nil)
            super(type, id, latitude, longitude, title, address, foursquare_id, reply_markup, input_message_content, thumb_url, thumb_width, thumb_height)
          end
        end
      end
    end
  end
end
