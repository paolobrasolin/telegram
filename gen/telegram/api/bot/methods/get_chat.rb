# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getchat official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        GetChat = Struct.new(
          :chat_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:
          )
            super(
              chat_id
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::Chat.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'getChat'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
