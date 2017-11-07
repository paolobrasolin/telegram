module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a sticker stored on the Telegram servers. By default, this sticker will be sent by the user. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the sticker.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _sticker_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] sticker_file_id
        #   @return [String] A valid file identifier of the sticker
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the sticker
        InlineQueryResultCachedSticker = Struct.new(:type, :id, :sticker_file_id, :reply_markup, :input_message_content) do
          def initialize(type:, id:, sticker_file_id:, reply_markup:, input_message_content:)
            super(type, id, sticker_file_id, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
