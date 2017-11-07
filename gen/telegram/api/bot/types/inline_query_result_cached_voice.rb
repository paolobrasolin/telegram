module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a voice message stored on the Telegram servers. By default, this voice message will be sent by the user. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the voice message.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _voice_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] voice_file_id
        #   @return [String] A valid file identifier for the voice message
        # @!attribute [rw] title
        #   @return [String] Voice message title
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption, 0-200 characters
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the voice message
        InlineQueryResultCachedVoice = Struct.new(:type, :id, :voice_file_id, :title, :caption, :reply_markup, :input_message_content) do
          def initialize(type:, id:, voice_file_id:, title:, caption:, reply_markup:, input_message_content:)
            super(type, id, voice_file_id, title, caption, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
