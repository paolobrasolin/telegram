module Telegram
  module API
    module Bot
      module Types
        # Represents a contact with a phone number. By default, this contact will be sent by the user. Alternatively, you can use _input_message_content_ to send a message with the specified content instead of the contact.
        #
        # *Note:* This will only work in Telegram versions released after 9 April, 2016. Older clients will ignore them.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the result, must be _contact_
        # @!attribute [rw] id
        #   @return [String] Unique identifier for this result, 1-64 Bytes
        # @!attribute [rw] phone_number
        #   @return [String] Contact's phone number
        # @!attribute [rw] first_name
        #   @return [String] Contact's first name
        # @!attribute [rw] last_name
        #   @return [String] _Optional_. Contact's last name
        # @!attribute [rw] reply_markup
        #   @return [InlineKeyboardMarkup] _Optional_. {https://core.telegram.org/bots#inline-keyboards-and-on-the-fly-updating Inline keyboard} attached to the message
        # @!attribute [rw] input_message_content
        #   @return [InputMessageContent] _Optional_. Content of the message to be sent instead of the contact
        # @!attribute [rw] thumb_url
        #   @return [String] _Optional_. Url of the thumbnail for the result
        # @!attribute [rw] thumb_width
        #   @return [Integer] _Optional_. Thumbnail width
        # @!attribute [rw] thumb_height
        #   @return [Integer] _Optional_. Thumbnail height
        InlineQueryResultContact = Struct.new(:type, :id, :phone_number, :first_name, :last_name, :reply_markup, :input_message_content, :thumb_url, :thumb_width, :thumb_height) do
          def initialize(type:, id:, phone_number:, first_name:, last_name:, reply_markup:, input_message_content:, thumb_url:, thumb_width:, thumb_height:)
            super(type, id, phone_number, first_name, last_name, reply_markup, input_message_content, thumb_url, thumb_width, thumb_height)
          end
        end
      end
    end
  end
end
