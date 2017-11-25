# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setchatstickerset official documentation}.
        #
        # @!attribute [rw] chat_id
        #   @return [Integer, String]
        # @!attribute [rw] sticker_set_name
        #   @return [String]
        SetChatStickerSet = Struct.new(
          :chat_id,
          :sticker_set_name
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            chat_id:,
            sticker_set_name:
          )
            super(
              chat_id,
              sticker_set_name&.to_s
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'setChatStickerSet'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
