module Telegram
  module API
    module Bot
      module Types
        # Represents a link to an animated GIF file. By default, this animated GIF file will be sent by the user with optional caption. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the animation.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _gif_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] gif_url
        #   @return [String] A valid URL for the GIF file. File size must not exceed 1MB
        # @!attribute [rw] gif_width
        #   @return [Integer] _Optional_. Width of the GIF
        # @!attribute [rw] gif_height
        #   @return [Integer] _Optional_. Height of the GIF
        # @!attribute [rw] gif_duration
        #   @return [Integer] _Optional_. Duration of the GIF
        # @!attribute [rw] thumb_url
        #   @return [String] URL of the static thumbnail for the result (jpeg or gif)
        # @!attribute [rw] title
        #   @return [String] _Optional_. Title for the result
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption of the GIF file to be sent, 0-200 characters
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the GIF animation
        InlineQueryResultGif = Struct.new(:type, :id, :gif_url, :gif_width, :gif_height, :gif_duration, :thumb_url, :title, :caption, :reply_markup, :input_message_content) do
          def initialize(type:, id:, gif_url:, gif_width:, gif_height:, gif_duration:, thumb_url:, title:, caption:, reply_markup:, input_message_content:)
            super(type, id, gif_url, gif_width, gif_height, gif_duration, thumb_url, title, caption, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
