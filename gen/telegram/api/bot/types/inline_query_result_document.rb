module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a file. By default, this file will be sent by the user with an optional caption. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the file. Currently, only *.PDF* and *.ZIP* files can be sent using this method.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _document_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] title
        #   @return [String] Title for the result
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption of the document to be sent, 0-200 characters
        # @!attribute [rw] document_url
        #   @return [String] A valid URL for the file
        # @!attribute [rw] mime_type
        #   @return [String] Mime type of the content of the file, either “application/pdf” or “application/zip”
        # @!attribute [rw] description
        #   @return [String] _Optional_. Short description of the result
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. Inline keyboard attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the file
        # @!attribute [rw] thumb_url
        #   @return [String] _Optional_. URL of the thumbnail (jpeg only) for the file
        # @!attribute [rw] thumb_width
        #   @return [Integer] _Optional_. Thumbnail width
        # @!attribute [rw] thumb_height
        #   @return [Integer] _Optional_. Thumbnail height
        InlineQueryResultDocument = Struct.new(:type, :id, :title, :caption, :document_url, :mime_type, :description, :reply_markup, :input_message_content, :thumb_url, :thumb_width, :thumb_height) do
          def initialize(type:, id:, title:, caption:, document_url:, mime_type:, description:, reply_markup:, input_message_content:, thumb_url:, thumb_width:, thumb_height:)
            super(type, id, title, caption, document_url, mime_type, description, reply_markup, input_message_content, thumb_url, thumb_width, thumb_height)
          end
        end
      end
    end
  end
end
