module Telegram
  module API
    module Bot
      module Types
        # Contains information about the current status of a webhook.
        #
        # @!attribute [rw] url
        #   @return [String] Webhook URL, may be empty if webhook is not set up
        # @!attribute [rw] has_custom_certificate
        #   @return [Boolean] True, if a custom certificate was provided for webhook certificate checks
        # @!attribute [rw] pending_update_count
        #   @return [Integer] Number of updates awaiting delivery
        # @!attribute [rw] last_error_date
        #   @return [Integer] _Optional_. Unix time for the most recent error that happened when trying to deliver an update via webhook
        # @!attribute [rw] last_error_message
        #   @return [String] _Optional_. Error message in human-readable format for the most recent error that happened when trying to deliver an update via webhook
        # @!attribute [rw] max_connections
        #   @return [Integer] _Optional_. Maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery
        # @!attribute [rw] allowed_updates
        #   @return [Array<String>] _Optional_. A list of update types the bot is subscribed to. Defaults to all update types
        WebhookInfo = Struct.new(:url, :has_custom_certificate, :pending_update_count, :last_error_date, :last_error_message, :max_connections, :allowed_updates) do
          def initialize(url:, has_custom_certificate:, pending_update_count:, last_error_date:, last_error_message:, max_connections:, allowed_updates:)
            super(url, has_custom_certificate, pending_update_count, last_error_date, last_error_message, max_connections, allowed_updates)
          end
        end
      end
    end
  end
end
