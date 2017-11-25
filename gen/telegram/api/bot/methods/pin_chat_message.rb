# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#pinchatmessage official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] message_id
        #   @return [Integer]
        # @!attribute [rw] disable_notification
        #   @return [Boolean, nil]
        PinChatMessage = Struct.new(
          :chat_id,
          :message_id,
          :disable_notification
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            message_id:,
            disable_notification: nil
          )
            super(
              chat_id,
              message_id&.to_i,
              (!!disable_notification unless disable_notification.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'pinChatMessage'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
