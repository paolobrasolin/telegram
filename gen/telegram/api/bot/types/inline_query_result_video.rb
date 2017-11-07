module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a page containing an embedded video player or a video file. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the video.
        #
        # If an InlineQueryResultVideo message contains an embedded video (e.g., YouTube), you *must* replace its content using _input_message_content_.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _video_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] video_url
        #   @return [String] A valid URL for the embedded video player or video file
        # @!attribute [rw] mime_type
        #   @return [String] Mime type of the content of video url, “text/html” or “video/mp4”
        # @!attribute [rw] thumb_url
        #   @return [String] URL of the thumbnail (jpeg only) for the video
        # @!attribute [rw] title
        #   @return [String] Title for the result
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption of the video to be sent, 0-200 characters
        # @!attribute [rw] video_width
        #   @return [Integer] _Optional_. Video width
        # @!attribute [rw] video_height
        #   @return [Integer] _Optional_. Video height
        # @!attribute [rw] video_duration
        #   @return [Integer] _Optional_. Video duration in seconds
        # @!attribute [rw] description
        #   @return [String] _Optional_. Short description of the result
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the video. This field is *required* if InlineQueryResultVideo is used to send an HTML-page as a result (e.g., a YouTube video).
        InlineQueryResultVideo = Struct.new(:type, :id, :video_url, :mime_type, :thumb_url, :title, :caption, :video_width, :video_height, :video_duration, :description, :reply_markup, :input_message_content) do
          def initialize(type:, id:, video_url:, mime_type:, thumb_url:, title:, caption:, video_width:, video_height:, video_duration:, description:, reply_markup:, input_message_content:)
            super(type, id, video_url, mime_type, thumb_url, title, caption, video_width, video_height, video_duration, description, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
