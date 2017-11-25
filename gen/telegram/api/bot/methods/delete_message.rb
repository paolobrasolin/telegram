# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#deletemessage official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] message_id
        #   @return [Integer]
        DeleteMessage = Struct.new(
          :chat_id,
          :message_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            message_id:
          )
            super(
              chat_id,
              message_id&.to_i
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'deleteMessage'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
