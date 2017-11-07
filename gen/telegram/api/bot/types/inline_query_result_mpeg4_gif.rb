module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a video animation (H.264/MPEG-4 AVC video without sound). By default, this animated MPEG-4 file will be sent by the user with optional caption. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the animation.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _mpeg4_gif_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] mpeg4_url
        #   @return [String] A valid URL for the MP4 file. File size must not exceed 1MB
        # @!attribute [rw] mpeg4_width
        #   @return [Integer] _Optional_. Video width
        # @!attribute [rw] mpeg4_height
        #   @return [Integer] _Optional_. Video height
        # @!attribute [rw] mpeg4_duration
        #   @return [Integer] _Optional_. Video duration
        # @!attribute [rw] thumb_url
        #   @return [String] URL of the static thumbnail (jpeg or gif) for the result
        # @!attribute [rw] title
        #   @return [String] _Optional_. Title for the result
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption of the MPEG-4 file to be sent, 0-200 characters
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the video animation
        InlineQueryResultMpeg4Gif = Struct.new(:type, :id, :mpeg4_url, :mpeg4_width, :mpeg4_height, :mpeg4_duration, :thumb_url, :title, :caption, :reply_markup, :input_message_content) do
          def initialize(type:, id:, mpeg4_url:, mpeg4_width: nil, mpeg4_height: nil, mpeg4_duration: nil, thumb_url:, title: nil, caption: nil, reply_markup: nil, input_message_content: nil)
            super(type, id, mpeg4_url, mpeg4_width, mpeg4_height, mpeg4_duration, thumb_url, title, caption, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
