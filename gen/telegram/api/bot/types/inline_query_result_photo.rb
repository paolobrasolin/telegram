module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a photo. By default, this photo will be sent by the user with optional caption. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the photo.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _photo_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] photo_url
        #   @return [String] A valid URL of the photo. Photo must be in *jpeg* format. Photo size must not exceed 5MB
        # @!attribute [rw] thumb_url
        #   @return [String] URL of the thumbnail for the photo
        # @!attribute [rw] photo_width
        #   @return [Integer] _Optional_. Width of the photo
        # @!attribute [rw] photo_height
        #   @return [Integer] _Optional_. Height of the photo
        # @!attribute [rw] title
        #   @return [String] _Optional_. Title for the result
        # @!attribute [rw] description
        #   @return [String] _Optional_. Short description of the result
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption of the photo to be sent, 0-200 characters
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the photo
        InlineQueryResultPhoto = Struct.new(:type, :id, :photo_url, :thumb_url, :photo_width, :photo_height, :title, :description, :caption, :reply_markup, :input_message_content) do
          def initialize(type:, id:, photo_url:, thumb_url:, photo_width:, photo_height:, title:, description:, caption:, reply_markup:, input_message_content:)
            super(type, id, photo_url, thumb_url, photo_width, photo_height, title, description, caption, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
