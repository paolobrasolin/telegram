# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#message official documentation}.
        #
        # @!attribute [rw] message_id
        #   @return [Integer]
        # @!attribute [rw] from
        #   @return [User, nil]
        # @!attribute [rw] date
        #   @return [Integer]
        # @!attribute [rw] chat
        #   @return [Chat]
        # @!attribute [rw] forward_from
        #   @return [User, nil]
        # @!attribute [rw] forward_from_chat
        #   @return [Chat, nil]
        # @!attribute [rw] forward_from_message_id
        #   @return [Integer, nil]
        # @!attribute [rw] forward_signature
        #   @return [String, nil]
        # @!attribute [rw] forward_date
        #   @return [Integer, nil]
        # @!attribute [rw] reply_to_message
        #   @return [Message, nil]
        # @!attribute [rw] edit_date
        #   @return [Integer, nil]
        # @!attribute [rw] media_group_id
        #   @return [String, nil]
        # @!attribute [rw] author_signature
        #   @return [String, nil]
        # @!attribute [rw] text
        #   @return [String, nil]
        # @!attribute [rw] entities
        #   @return [Array<MessageEntity>, nil]
        # @!attribute [rw] caption_entities
        #   @return [Array<MessageEntity>, nil]
        # @!attribute [rw] audio
        #   @return [Audio, nil]
        # @!attribute [rw] document
        #   @return [Document, nil]
        # @!attribute [rw] game
        #   @return [Game, nil]
        # @!attribute [rw] photo
        #   @return [Array<PhotoSize>, nil]
        # @!attribute [rw] sticker
        #   @return [Sticker, nil]
        # @!attribute [rw] video
        #   @return [Video, nil]
        # @!attribute [rw] voice
        #   @return [Voice, nil]
        # @!attribute [rw] video_note
        #   @return [VideoNote, nil]
        # @!attribute [rw] caption
        #   @return [String, nil]
        # @!attribute [rw] contact
        #   @return [Contact, nil]
        # @!attribute [rw] location
        #   @return [Location, nil]
        # @!attribute [rw] venue
        #   @return [Venue, nil]
        # @!attribute [rw] new_chat_members
        #   @return [Array<User>, nil]
        # @!attribute [rw] left_chat_member
        #   @return [User, nil]
        # @!attribute [rw] new_chat_title
        #   @return [String, nil]
        # @!attribute [rw] new_chat_photo
        #   @return [Array<PhotoSize>, nil]
        # @!attribute [rw] delete_chat_photo
        #   @return [TrueClass, nil]
        # @!attribute [rw] group_chat_created
        #   @return [TrueClass, nil]
        # @!attribute [rw] supergroup_chat_created
        #   @return [TrueClass, nil]
        # @!attribute [rw] channel_chat_created
        #   @return [TrueClass, nil]
        # @!attribute [rw] migrate_to_chat_id
        #   @return [Integer, nil]
        # @!attribute [rw] migrate_from_chat_id
        #   @return [Integer, nil]
        # @!attribute [rw] pinned_message
        #   @return [Message, nil]
        # @!attribute [rw] invoice
        #   @return [Invoice, nil]
        # @!attribute [rw] successful_payment
        #   @return [SuccessfulPayment, nil]
        Message = Struct.new(
          :message_id,
          :from,
          :date,
          :chat,
          :forward_from,
          :forward_from_chat,
          :forward_from_message_id,
          :forward_signature,
          :forward_date,
          :reply_to_message,
          :edit_date,
          :media_group_id,
          :author_signature,
          :text,
          :entities,
          :caption_entities,
          :audio,
          :document,
          :game,
          :photo,
          :sticker,
          :video,
          :voice,
          :video_note,
          :caption,
          :contact,
          :location,
          :venue,
          :new_chat_members,
          :left_chat_member,
          :new_chat_title,
          :new_chat_photo,
          :delete_chat_photo,
          :group_chat_created,
          :supergroup_chat_created,
          :channel_chat_created,
          :migrate_to_chat_id,
          :migrate_from_chat_id,
          :pinned_message,
          :invoice,
          :successful_payment
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            message_id:,
            from: nil,
            date:,
            chat:,
            forward_from: nil,
            forward_from_chat: nil,
            forward_from_message_id: nil,
            forward_signature: nil,
            forward_date: nil,
            reply_to_message: nil,
            edit_date: nil,
            media_group_id: nil,
            author_signature: nil,
            text: nil,
            entities: nil,
            caption_entities: nil,
            audio: nil,
            document: nil,
            game: nil,
            photo: nil,
            sticker: nil,
            video: nil,
            voice: nil,
            video_note: nil,
            caption: nil,
            contact: nil,
            location: nil,
            venue: nil,
            new_chat_members: nil,
            left_chat_member: nil,
            new_chat_title: nil,
            new_chat_photo: nil,
            delete_chat_photo: nil,
            group_chat_created: nil,
            supergroup_chat_created: nil,
            channel_chat_created: nil,
            migrate_to_chat_id: nil,
            migrate_from_chat_id: nil,
            pinned_message: nil,
            invoice: nil,
            successful_payment: nil
          )
            super(
              message_id&.to_i,
              (Types::User.new(**from.to_h) unless from.nil?),
              date&.to_i,
              Types::Chat.new(**chat.to_h),
              (Types::User.new(**forward_from.to_h) unless forward_from.nil?),
              (Types::Chat.new(**forward_from_chat.to_h) unless forward_from_chat.nil?),
              (forward_from_message_id&.to_i unless forward_from_message_id.nil?),
              (forward_signature&.to_s unless forward_signature.nil?),
              (forward_date&.to_i unless forward_date.nil?),
              (Types::Message.new(**reply_to_message.to_h) unless reply_to_message.nil?),
              (edit_date&.to_i unless edit_date.nil?),
              (media_group_id&.to_s unless media_group_id.nil?),
              (author_signature&.to_s unless author_signature.nil?),
              (text&.to_s unless text.nil?),
              (entities&.to_a&.map { |o| Types::MessageEntity.new(**o.to_h) } unless entities.nil?),
              (caption_entities&.to_a&.map { |o| Types::MessageEntity.new(**o.to_h) } unless caption_entities.nil?),
              (Types::Audio.new(**audio.to_h) unless audio.nil?),
              (Types::Document.new(**document.to_h) unless document.nil?),
              (Types::Game.new(**game.to_h) unless game.nil?),
              (photo&.to_a&.map { |o| Types::PhotoSize.new(**o.to_h) } unless photo.nil?),
              (Types::Sticker.new(**sticker.to_h) unless sticker.nil?),
              (Types::Video.new(**video.to_h) unless video.nil?),
              (Types::Voice.new(**voice.to_h) unless voice.nil?),
              (Types::VideoNote.new(**video_note.to_h) unless video_note.nil?),
              (caption&.to_s unless caption.nil?),
              (Types::Contact.new(**contact.to_h) unless contact.nil?),
              (Types::Location.new(**location.to_h) unless location.nil?),
              (Types::Venue.new(**venue.to_h) unless venue.nil?),
              (new_chat_members&.to_a&.map { |o| Types::User.new(**o.to_h) } unless new_chat_members.nil?),
              (Types::User.new(**left_chat_member.to_h) unless left_chat_member.nil?),
              (new_chat_title&.to_s unless new_chat_title.nil?),
              (new_chat_photo&.to_a&.map { |o| Types::PhotoSize.new(**o.to_h) } unless new_chat_photo.nil?),
              (!!delete_chat_photo unless delete_chat_photo.nil?),
              (!!group_chat_created unless group_chat_created.nil?),
              (!!supergroup_chat_created unless supergroup_chat_created.nil?),
              (!!channel_chat_created unless channel_chat_created.nil?),
              (migrate_to_chat_id&.to_i unless migrate_to_chat_id.nil?),
              (migrate_from_chat_id&.to_i unless migrate_from_chat_id.nil?),
              (Types::Message.new(**pinned_message.to_h) unless pinned_message.nil?),
              (Types::Invoice.new(**invoice.to_h) unless invoice.nil?),
              (Types::SuccessfulPayment.new(**successful_payment.to_h) unless successful_payment.nil?)
            )
          end
        end
      end
    end
  end
end
