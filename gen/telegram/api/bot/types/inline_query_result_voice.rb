module Telegram
  module API
    module Bot
      module Types
        # Represents a link to a voice recording in an .ogg container encoded with OPUS. By default, this voice recording will be sent by the user. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the the voice message.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _voice_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] voice_url
        #   @return [String] A valid URL for the voice recording
        # @!attribute [rw] title
        #   @return [String] Recording title
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption, 0-200 characters
        # @!attribute [rw] voice_duration
        #   @return [Integer] _Optional_. Recording duration in seconds
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the voice recording
        InlineQueryResultVoice = Struct.new(:type, :id, :voice_url, :title, :caption, :voice_duration, :reply_markup, :input_message_content) do
          def initialize(type:, id:, voice_url:, title:, caption: nil, voice_duration: nil, reply_markup: nil, input_message_content: nil)
            super(type, id, voice_url, title, caption, voice_duration, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
