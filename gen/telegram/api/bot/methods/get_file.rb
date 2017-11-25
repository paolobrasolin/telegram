# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getfile official documentation}.
        #
        # @!attribute [rw] file_id
        #   @return [String]
        GetFile = Struct.new(
          :file_id
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            file_id:
          )
            super(
              file_id&.to_s
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { Types::File.new(**r.to_h) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'getFile'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
