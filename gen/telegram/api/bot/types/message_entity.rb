module Telegram
  module API
    module Bot
      module Types
        # This object represents one special entity in a text message. For example, hashtags, usernames, URLs, etc.
        #
        # @!attribute [rw] type
        #   @return [String] Type of the entity. Can be _mention_ (<code>@username</code>), _hashtag_, _bot_command_, _url_, _email_, _bold_ (bold text), _italic_ (italic text), _code_ (monowidth string), _pre_ (monowidth block), _text_link_ (for clickable text URLs), _text_mention_ (for users {https://telegram.org/blog/edit#new-mentions without usernames})
        # @!attribute [rw] offset
        #   @return [Integer] Offset in UTF-16 code units to the start of the entity
        # @!attribute [rw] length
        #   @return [Integer] Length of the entity in UTF-16 code units
        # @!attribute [rw] url
        #   @return [String] _Optional_. For “text_link” only, url that will be opened after user taps on the text
        # @!attribute [rw] user
        #   @return [User] _Optional_. For “text_mention” only, the mentioned user
        MessageEntity = Struct.new(:type, :offset, :length, :url, :user) do
          def initialize(type:, offset:, length:, url: nil, user: nil)
            super(type, offset, length, url, user)
          end
        end
      end
    end
  end
end
