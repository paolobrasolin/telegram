module Telegram
  module API
    module Bot
      module Types
        # Represents a location on a map. By default, the location will be sent by the user. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the location.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _location_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 Bytes
        # @!attribute [rw] latitude
        #   @return [Float] Location latitude in degrees
        # @!attribute [rw] longitude
        #   @return [Float] Location longitude in degrees
        # @!attribute [rw] title
        #   @return [String] Location title
        # @!attribute [rw] live_period
        #   @return [Integer] _Optional_. Period in seconds for which the location can be updated, should be between 60 and 86400.
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the location
        # @!attribute [rw] thumb_url
        #   @return [String] _Optional_. Url of the thumbnail for the result
        # @!attribute [rw] thumb_width
        #   @return [Integer] _Optional_. Thumbnail width
        # @!attribute [rw] thumb_height
        #   @return [Integer] _Optional_. Thumbnail height
        InlineQueryResultLocation = Struct.new(:type, :id, :latitude, :longitude, :title, :live_period, :reply_markup, :input_message_content, :thumb_url, :thumb_width, :thumb_height) do
          def initialize(type:, id:, latitude:, longitude:, title:, live_period:, reply_markup:, input_message_content:, thumb_url:, thumb_width:, thumb_height:)
            super(type, id, latitude, longitude, title, live_period, reply_markup, input_message_content, thumb_url, thumb_width, thumb_height)
          end
        end
      end
    end
  end
end
