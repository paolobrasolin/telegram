# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setgamescore official documentation}.
        #
        # @!attribute [rw] user_id
        #   @return [Integer]
        # @!attribute [rw] score
        #   @return [Integer]
        # @!attribute [rw] force
        #   @return [Boolean, nil]
        # @!attribute [rw] disable_edit_message
        #   @return [Boolean, nil]
        # @!attribute [rw] chat_id
        #   @return [Integer, nil]
        # @!attribute [rw] message_id
        #   @return [Integer, nil]
        # @!attribute [rw] inline_message_id
        #   @return [String, nil]
        SetGameScore = Struct.new(
          :user_id,
          :score,
          :force,
          :disable_edit_message,
          :chat_id,
          :message_id,
          :inline_message_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            user_id:,
            score:,
            force: nil,
            disable_edit_message: nil,
            chat_id: nil,
            message_id: nil,
            inline_message_id: nil
          )
            super(
              user_id&.to_i,
              score&.to_i,
              (!!force unless force.nil?),
              (!!disable_edit_message unless disable_edit_message.nil?),
              (chat_id&.to_i unless chat_id.nil?),
              (message_id&.to_i unless message_id.nil?),
              (inline_message_id&.to_s unless inline_message_id.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { r },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'setGameScore'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
