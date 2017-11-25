# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#deletewebhook official documentation}.
        #
        DeleteWebhook = Struct.new(nil) do
          include Telegram::CoreExt::Struct

          def initialize
            super
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'deleteWebhook'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
