module Telegram
  module API
    module Bot
      module Types
        # Represents a link to an article or web page.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _article_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 Bytes
        # @!attribute [rw] title
        #   @return [String] Title of the result
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] Content of the message to be sent
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] url
        #   @return [String] _Optional_. URL of the result
        # @!attribute [rw] hide_url
        #   @return [Boolean] _Optional_. Pass _True_, if you don't want the URL to be shown in the message
        # @!attribute [rw] description
        #   @return [String] _Optional_. Short description of the result
        # @!attribute [rw] thumb_url
        #   @return [String] _Optional_. Url of the thumbnail for the result
        # @!attribute [rw] thumb_width
        #   @return [Integer] _Optional_. Thumbnail width
        # @!attribute [rw] thumb_height
        #   @return [Integer] _Optional_. Thumbnail height
        InlineQueryResultArticle = Struct.new(:type, :id, :title, :input_message_content, :reply_markup, :url, :hide_url, :description, :thumb_url, :thumb_width, :thumb_height) do
          def initialize(type:, id:, title:, input_message_content:, reply_markup:, url:, hide_url:, description:, thumb_url:, thumb_width:, thumb_height:)
            super(type, id, title, input_message_content, reply_markup, url, hide_url, description, thumb_url, thumb_width, thumb_height)
          end
        end
      end
    end
  end
end
