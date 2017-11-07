module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a photo stored on the Telegram servers. By default, this photo will be sent by the user with an optional caption. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the photo.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _photo_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] photo_file_id
        #   @return [String] A valid file identifier of the photo
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
        InlineQueryResultCachedPhoto = Struct.new(:type, :id, :photo_file_id, :title, :description, :caption, :reply_markup, :input_message_content) do
          def initialize(type:, id:, photo_file_id:, title: nil, description: nil, caption: nil, reply_markup: nil, input_message_content: nil)
            super(type, id, photo_file_id, title, description, caption, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
