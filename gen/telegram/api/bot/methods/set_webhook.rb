# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#setwebhook official documentation}.
        #
        # @param url [String]
        # @param certificate [InputFile, nil]
        # @param max_connections [Integer, nil]
        # @param allowed_updates [Array<String>, nil]
        def set_webhook(
          url:,
          certificate: nil,
          max_connections: nil,
          allowed_updates: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('setWebhook'),
              parameters: {
                url: url,
                certificate: certificate,
                max_connections: max_connections,
                allowed_updates: allowed_updates
              }
            )
          )
        end
      end
    end
  end
end
