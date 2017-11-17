# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#deletewebhook official documentation}.
        #
        def delete_webhook
          Types::Response.new(
            **Client.post(
              url: build_url('deleteWebhook'),
              parameters: {}
            )
          )
        end
      end
    end
  end
end
