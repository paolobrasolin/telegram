# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#webhookinfo official documentation}.
        #
        # @!attribute [rw] url
        #   @return [String]
        # @!attribute [rw] has_custom_certificate
        #   @return [Boolean]
        # @!attribute [rw] pending_update_count
        #   @return [Integer]
        # @!attribute [rw] last_error_date
        #   @return [Integer, nil]
        # @!attribute [rw] last_error_message
        #   @return [String, nil]
        # @!attribute [rw] max_connections
        #   @return [Integer, nil]
        # @!attribute [rw] allowed_updates
        #   @return [Array<String>, nil]
        WebhookInfo = Struct.new(
          :url,
          :has_custom_certificate,
          :pending_update_count,
          :last_error_date,
          :last_error_message,
          :max_connections,
          :allowed_updates
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            url:,
            has_custom_certificate:,
            pending_update_count:,
            last_error_date: nil,
            last_error_message: nil,
            max_connections: nil,
            allowed_updates: nil
          )
            super(
              url&.to_s,
              (!!has_custom_certificate unless has_custom_certificate.nil?),
              pending_update_count&.to_i,
              (last_error_date&.to_i unless last_error_date.nil?),
              (last_error_message&.to_s unless last_error_message.nil?),
              (max_connections&.to_i unless max_connections.nil?),
              (allowed_updates&.to_a&.map { |o| o&.to_s } unless allowed_updates.nil?)
            )
          end
        end
      end
    end
  end
end
