# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setwebhook official documentation}.
        #
        # @!attribute [rw] url
        #   @return [String]
        # @!attribute [rw] certificate
        #   @return [InputFile, nil]
        # @!attribute [rw] max_connections
        #   @return [Integer, nil]
        # @!attribute [rw] allowed_updates
        #   @return [Array<String>, nil]
        SetWebhook = Struct.new(
          :url,
          :certificate,
          :max_connections,
          :allowed_updates
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            url:,
            certificate: nil,
            max_connections: nil,
            allowed_updates: nil
          )
            super(
              url&.to_s,
              (certificate unless certificate.nil?),
              (max_connections&.to_i unless max_connections.nil?),
              (allowed_updates&.to_a&.map { |o| o&.to_s } unless allowed_updates.nil?)
            )
          end

          def call(client:, token:)
            Types::Response.new(
              result_caster: ->(r) { (!!r unless r.nil?) },
              **client.post(
                url: Telegram::API::Bot.build_url(token: token, method: 'setWebhook'),
                parameters: self.to_h
              )
            )
          end
        end
      end
    end
  end
end
