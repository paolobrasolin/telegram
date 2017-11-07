module Telegram
  module API
    module Bot
      module Types
        # Represents a link to an animated GIF file stored on the Telegram servers. By default, this animated GIF file will be sent by the user with an optional caption. Alternatively, you can use _input_message_content_ to send a message with specified content instead of the animation.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _gif_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] gif_file_id
        #   @return [String] A valid file identifier for the GIF file
        # @!attribute [rw] title
        #   @return [String] _Optional_. Title for the result
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption of the GIF file to be sent, 0-200 characters
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the GIF animation
        InlineQueryResultCachedGif = Struct.new(:type, :id, :gif_file_id, :title, :caption, :reply_markup, :input_message_content) do
          def initialize(type:, id:, gif_file_id:, title: nil, caption: nil, reply_markup: nil, input_message_content: nil)
            super(type, id, gif_file_id, title, caption, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
