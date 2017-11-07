module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a video file stored on the Telegram servers. By default, this video file will be sent by the user with an optional caption. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the video.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _video_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] video_file_id
        #   @return [String] A valid file identifier for the video file
        # @!attribute [rw] title
        #   @return [String] Title for the result
        # @!attribute [rw] description
        #   @return [String] _Optional_. Short description of the result
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption of the video to be sent, 0-200 characters
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the video
        InlineQueryResultCachedVideo = Struct.new(:type, :id, :video_file_id, :title, :description, :caption, :reply_markup, :input_message_content) do
          def initialize(type:, id:, video_file_id:, title:, description: nil, caption: nil, reply_markup: nil, input_message_content: nil)
            super(type, id, video_file_id, title, description, caption, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
