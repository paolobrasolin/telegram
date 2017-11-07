module Telegram
  module API
    module Bot
      module Types
        # This object represents a message.
        #
        # @!attribute [rw] message_id
        #   @return [Integer] Unique message identifier inside this chat
        # @!attribute [rw] from
        #   @return [User] _Optional_. Sender, empty for messages sent to channels
        # @!attribute [rw] date
        #   @return [Integer] Date the message was sent in Unix time
        # @!attribute [rw] chat
        #   @return [Chat] Conversation the message belongs to
        # @!attribute [rw] forward_from
        #   @return [User] _Optional_. For forwarded messages, sender of the original message
        # @!attribute [rw] forward_from_chat
        #   @return [Chat] _Optional_. For messages forwarded from channels, information about the original channel
        # @!attribute [rw] forward_from_message_id
        #   @return [Integer] _Optional_. For messages forwarded from channels, identifier of the original message in the channel
        # @!attribute [rw] forward_signature
        #   @return [String] _Optional_. For messages forwarded from channels, signature of the post author if present
        # @!attribute [rw] forward_date
        #   @return [Integer] _Optional_. For forwarded messages, date the original message was sent in Unix time
        # @!attribute [rw] reply_to_message
        #   @return [Message] _Optional_. For replies, the original message. Note that the Message object in this field will not contain further _reply_to_message_ fields even if it itself is a reply.
        # @!attribute [rw] edit_date
        #   @return [Integer] _Optional_. Date the message was last edited in Unix time
        # @!attribute [rw] author_signature
        #   @return [String] _Optional_. Signature of the post author for messages in channels
        # @!attribute [rw] text
        #   @return [String] _Optional_. For text messages, the actual UTF-8 text of the message, 0-4096 characters.
        # @!attribute [rw] entities
        #   @return [Array<MessageEntity>] _Optional_. For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text
        # @!attribute [rw] caption_entities
        #   @return [Array<MessageEntity>] _Optional_. For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption
        # @!attribute [rw] audio
        #   @return [Audio] _Optional_. Message is an audio file, information about the file
        # @!attribute [rw] document
        #   @return [Document] _Optional_. Message is a general file, information about the file
        # @!attribute [rw] game
        #   @return [Game] _Optional_. Message is a game, information about the game. More about games »
        # @!attribute [rw] photo
        #   @return [Array<PhotoSize>] _Optional_. Message is a photo, available sizes of the photo
        # @!attribute [rw] sticker
        #   @return [Sticker] _Optional_. Message is a sticker, information about the sticker
        # @!attribute [rw] video
        #   @return [Video] _Optional_. Message is a video, information about the video
        # @!attribute [rw] voice
        #   @return [Voice] _Optional_. Message is a voice message, information about the file
        # @!attribute [rw] video_note
        #   @return [VideoNote] _Optional_. Message is a {https://telegram.org/blog/video-messages-and-telescope video note}, information about the video message
        # @!attribute [rw] caption
        #   @return [String] _Optional_. Caption for the audio, document, photo, video or voice, 0-200 characters
        # @!attribute [rw] contact
        #   @return [Contact] _Optional_. Message is a shared contact, information about the contact
        # @!attribute [rw] location
        #   @return [Location] _Optional_. Message is a shared location, information about the location
        # @!attribute [rw] venue
        #   @return [Venue] _Optional_. Message is a venue, information about the venue
        # @!attribute [rw] new_chat_members
        #   @return [Array<User>] _Optional_. New members that were added to the group or supergroup and information about them (the bot itself may be one of these members)
        # @!attribute [rw] left_chat_member
        #   @return [User] _Optional_. A member was removed from the group, information about them (this member may be the bot itself)
        # @!attribute [rw] new_chat_title
        #   @return [String] _Optional_. A chat title was changed to this value
        # @!attribute [rw] new_chat_photo
        #   @return [Array<PhotoSize>] _Optional_. A chat photo was change to this value
        # @!attribute [rw] delete_chat_photo
        #   @return [True] _Optional_. Service message: the chat photo was deleted
        # @!attribute [rw] group_chat_created
        #   @return [True] _Optional_. Service message: the group has been created
        # @!attribute [rw] supergroup_chat_created
        #   @return [True] _Optional_. Service message: the supergroup has been created. This field can‘t be received in a message coming through updates, because bot can’t be a member of a supergroup when it is created. It can only be found in reply_to_message if someone replies to a very first message in a directly created supergroup.
        # @!attribute [rw] channel_chat_created
        #   @return [True] _Optional_. Service message: the channel has been created. This field can‘t be received in a message coming through updates, because bot can’t be a member of a channel when it is created. It can only be found in reply_to_message if someone replies to a very first message in a channel.
        # @!attribute [rw] migrate_to_chat_id
        #   @return [Integer] _Optional_. The group has been migrated to a supergroup with the specified identifier. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
        # @!attribute [rw] migrate_from_chat_id
        #   @return [Integer] _Optional_. The supergroup has been migrated from a group with the specified identifier. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
        # @!attribute [rw] pinned_message
        #   @return [Message] _Optional_. Specified message was pinned. Note that the Message object in this field will not contain further _reply_to_message_ fields even if it is itself a reply.
        # @!attribute [rw] invoice
        #   @return [Invoice] _Optional_. Message is an invoice for a payment, information about the invoice. More about payments »
        # @!attribute [rw] successful_payment
        #   @return [SuccessfulPayment] _Optional_. Message is a service message about a successful payment, information about the payment. More about payments »
        Message = Struct.new(:message_id, :from, :date, :chat, :forward_from, :forward_from_chat, :forward_from_message_id, :forward_signature, :forward_date, :reply_to_message, :edit_date, :author_signature, :text, :entities, :caption_entities, :audio, :document, :game, :photo, :sticker, :video, :voice, :video_note, :caption, :contact, :location, :venue, :new_chat_members, :left_chat_member, :new_chat_title, :new_chat_photo, :delete_chat_photo, :group_chat_created, :supergroup_chat_created, :channel_chat_created, :migrate_to_chat_id, :migrate_from_chat_id, :pinned_message, :invoice, :successful_payment) do
          def initialize(message_id:, from:, date:, chat:, forward_from:, forward_from_chat:, forward_from_message_id:, forward_signature:, forward_date:, reply_to_message:, edit_date:, author_signature:, text:, entities:, caption_entities:, audio:, document:, game:, photo:, sticker:, video:, voice:, video_note:, caption:, contact:, location:, venue:, new_chat_members:, left_chat_member:, new_chat_title:, new_chat_photo:, delete_chat_photo:, group_chat_created:, supergroup_chat_created:, channel_chat_created:, migrate_to_chat_id:, migrate_from_chat_id:, pinned_message:, invoice:, successful_payment:)
            super(message_id, from, date, chat, forward_from, forward_from_chat, forward_from_message_id, forward_signature, forward_date, reply_to_message, edit_date, author_signature, text, entities, caption_entities, audio, document, game, photo, sticker, video, voice, video_note, caption, contact, location, venue, new_chat_members, left_chat_member, new_chat_title, new_chat_photo, delete_chat_photo, group_chat_created, supergroup_chat_created, channel_chat_created, migrate_to_chat_id, migrate_from_chat_id, pinned_message, invoice, successful_payment)
          end
        end
      end
    end
  end
end
