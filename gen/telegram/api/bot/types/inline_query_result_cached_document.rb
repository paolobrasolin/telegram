module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a file stored on the Telegram servers. By default, this file will be sent by the user with an optional caption. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the file.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _document_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] title
        #   @return [String] Title for the result
        # @!attribute [rw] document_file_id
        #   @return [String] A valid file identifier for the file
        # @!attribute [rw] description
        #   @return [String] _Optional_. Short description of the result
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption of the document to be sent, 0-200 characters
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the file
        InlineQueryResultCachedDocument = Struct.new(:type, :id, :title, :document_file_id, :description, :caption, :reply_markup, :input_message_content) do
          def initialize(type:, id:, title:, document_file_id:, description:, caption:, reply_markup:, input_message_content:)
            super(type, id, title, document_file_id, description, caption, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
