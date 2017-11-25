# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getstickerset official documentation}.
        #
        # @!attribute [rw] name
        #   @return [String]
        GetStickerSet = Struct.new(
          :name
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            name:
          )
            super(
              name&.to_s
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::StickerSet.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'getStickerSet'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
