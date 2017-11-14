# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#chat official documentation}.
        #
        # @!attribute [rw] id
        #   @return [Integer]
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] title
        #   @return [String, nil]
        # @!attribute [rw] username
        #   @return [String, nil]
        # @!attribute [rw] first_name
        #   @return [String, nil]
        # @!attribute [rw] last_name
        #   @return [String, nil]
        # @!attribute [rw] all_members_are_administrators
        #   @return [Boolean, nil]
        # @!attribute [rw] photo
        #   @return [ChatPhoto, nil]
        # @!attribute [rw] description
        #   @return [String, nil]
        # @!attribute [rw] invite_link
        #   @return [String, nil]
        # @!attribute [rw] pinned_message
        #   @return [Message, nil]
        # @!attribute [rw] sticker_set_name
        #   @return [String, nil]
        # @!attribute [rw] can_set_sticker_set
        #   @return [Boolean, nil]
        Chat = Struct.new(
          :id,
          :type,
          :title,
          :username,
          :first_name,
          :last_name,
          :all_members_are_administrators,
          :photo,
          :description,
          :invite_link,
          :pinned_message,
          :sticker_set_name,
          :can_set_sticker_set
        ) do
          def initialize(
            id:,
            type:,
            title: nil,
            username: nil,
            first_name: nil,
            last_name: nil,
            all_members_are_administrators: nil,
            photo: nil,
            description: nil,
            invite_link: nil,
            pinned_message: nil,
            sticker_set_name: nil,
            can_set_sticker_set: nil
          )
            super(
              id&.to_i,
              type&.to_s,
              (title&.to_s unless title.nil?),
              (username&.to_s unless username.nil?),
              (first_name&.to_s unless first_name.nil?),
              (last_name&.to_s unless last_name.nil?),
              (!!all_members_are_administrators unless all_members_are_administrators.nil?),
              (ChatPhoto.new(**photo.to_h) unless photo.nil?),
              (description&.to_s unless description.nil?),
              (invite_link&.to_s unless invite_link.nil?),
              (Message.new(**pinned_message.to_h) unless pinned_message.nil?),
              (sticker_set_name&.to_s unless sticker_set_name.nil?),
              (!!can_set_sticker_set unless can_set_sticker_set.nil?)
            )
          end
        end
      end
    end
  end
end
