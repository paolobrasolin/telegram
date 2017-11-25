# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#uploadstickerfile official documentation}.
        #
        # @!attribute [rw] user_id
        #   @return [Integer]
        # @!attribute [rw] png_sticker
        #   @return [InputFile]
        UploadStickerFile = Struct.new(
          :user_id,
          :png_sticker
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            user_id:,
            png_sticker:
          )
            super(
              user_id&.to_i,
              png_sticker
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::File.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'uploadStickerFile'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
