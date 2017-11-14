# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#callbackquery official documentation}.
        #
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] from
        #   @return [User]
        # @!attribute [rw] message
        #   @return [Message, nil]
        # @!attribute [rw] inline_message_id
        #   @return [String, nil]
        # @!attribute [rw] chat_instance
        #   @return [String]
        # @!attribute [rw] data
        #   @return [String, nil]
        # @!attribute [rw] game_short_name
        #   @return [String, nil]
        CallbackQuery = Struct.new(
          :id,
          :from,
          :message,
          :inline_message_id,
          :chat_instance,
          :data,
          :game_short_name
        ) do
          def initialize(
            id:,
            from:,
            message: nil,
            inline_message_id: nil,
            chat_instance:,
            data: nil,
            game_short_name: nil
          )
            super(
              id&.to_s,
              User.new(**from.to_h),
              (Message.new(**message.to_h) unless message.nil?),
              (inline_message_id&.to_s unless inline_message_id.nil?),
              chat_instance&.to_s,
              (data&.to_s unless data.nil?),
              (game_short_name&.to_s unless game_short_name.nil?)
            )
          end
        end
      end
    end
  end
end
