module Telegram
  module API
    module Bot
      module Types
        # Represents the content of a text message to be sent as the result of an inline query.
        #
        # @!attribute [rw] message_text
        #   @return [String] Text of the message to be sent, 1-4096 characters
        # @!attribute [rw] parse_mode
        #   @return [String] _Optional_. Send _Markdown_ or _HTML_, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in your bot's message.
        # @!attribute [rw] disable_web_page_preview
        #   @return [Boolean] _Optional_. Disables link previews for links in the sent message
        InputTextMessageContent = Struct.new(:message_text, :parse_mode, :disable_web_page_preview) do
          def initialize(message_text:, parse_mode: nil, disable_web_page_preview: nil)
            super(message_text, parse_mode, disable_web_page_preview)
          end
        end
      end
    end
  end
end
