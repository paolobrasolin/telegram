module Telegram
  module API
    module Bot
      module Types
        # This object represents a chat.
        #
        # @!attribute [rw] id
        #   @return [Integer] Unique identifier for this chat. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
        # @!attribute [rw] type
        #   @return [String] Type of chat, can be either “private”, “group”, “supergroup” or “channel”
        # @!attribute [rw] title
        #   @return [String] _Optional_. Title, for supergroups, channels and group chats
        # @!attribute [rw] username
        #   @return [String] _Optional_. Username, for private chats, supergroups and channels if available
        # @!attribute [rw] first_name
        #   @return [String] _Optional_. First name of the other party in a private chat
        # @!attribute [rw] last_name
        #   @return [String] _Optional_. Last name of the other party in a private chat
        # @!attribute [rw] all_members_are_administrators
        #   @return [Boolean] _Optional_. True if a group has ‘All Members Are Admins’ enabled.
        # @!attribute [rw] photo
        #   @return [ChatPhoto] _Optional_. Chat photo. Returned only in getChat.
        # @!attribute [rw] description
        #   @return [String] _Optional_. Description, for supergroups and channel chats. Returned only in getChat.
        # @!attribute [rw] invite_link
        #   @return [String] _Optional_. Chat invite link, for supergroups and channel chats. Returned only in getChat.
        # @!attribute [rw] pinned_message
        #   @return [Message] _Optional_. Pinned message, for supergroups. Returned only in getChat.
        # @!attribute [rw] sticker_set_name
        #   @return [String] _Optional_. For supergroups, name of group sticker set. Returned only in getChat.
        # @!attribute [rw] can_set_sticker_set
        #   @return [Boolean] _Optional_. True, if the bot can change the group sticker set. Returned only in getChat.
        Chat = Struct.new(:id, :type, :title, :username, :first_name, :last_name, :all_members_are_administrators, :photo, :description, :invite_link, :pinned_message, :sticker_set_name, :can_set_sticker_set) do
          def initialize(id:, type:, title: nil, username: nil, first_name: nil, last_name: nil, all_members_are_administrators: nil, photo: nil, description: nil, invite_link: nil, pinned_message: nil, sticker_set_name: nil, can_set_sticker_set: nil)
            super(id, type, title, username, first_name, last_name, all_members_are_administrators, photo, description, invite_link, pinned_message, sticker_set_name, can_set_sticker_set)
          end
        end
      end
    end
  end
end
