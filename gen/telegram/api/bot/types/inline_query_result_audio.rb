module Telegram
  module API
    module Bot
      module Types
        # Represents a link to an mp3 audio file. By default, this audio file will be sent by the user. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the audio.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _audio_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 bytes
        # @!attribute [rw] audio_url
        #   @return [String] A valid URL for the audio file
        # @!attribute [rw] title
        #   @return [String] Title
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption, 0-200 characters
        # @!attribute [rw] performer
        #   @return [String] _Optional_. Performer
        # @!attribute [rw] audio_duration
        #   @return [Integer] _Optional_. Audio duration in seconds
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the audio
        InlineQueryResultAudio = Struct.new(:type, :id, :audio_url, :title, :caption, :performer, :audio_duration, :reply_markup, :input_message_content) do
          def initialize(type:, id:, audio_url:, title:, caption:, performer:, audio_duration:, reply_markup:, input_message_content:)
            super(type, id, audio_url, title, caption, performer, audio_duration, reply_markup, input_message_content)
          end
        end
      end
    end
  end
end
