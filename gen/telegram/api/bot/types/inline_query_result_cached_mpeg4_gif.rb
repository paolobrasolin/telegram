module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a video animation (H.264/MPEG-4 AVC video without sound) stored on the Telegram servers. By default, this animated MPEG-4 file will be sent by the user with an optional caption. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the animation.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _mpeg4_gif_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] mpeg4_file_id
        #   @return [String] A valid file identifier for the MP4 file
        # @!attribute [rw] title
        #   @return [String] _Optional_. Title for the result
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption of the MPEG-4 file to be sent, 0-200 characters
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the video animation
        InlineQueryResultCachedMpeg4Gif = Struct.new(:type, :id, :mpeg4_file_id, :title, :caption, :reply_markup, :input_message_content) do
          def initialize(type:, id:, mpeg4_file_id:, title:, caption:, reply_markup:, input_message_content:)
            super(type, id, mpeg4_file_id, title, caption, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
