# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getwebhookinfo official documentation}.
        #
        def get_webhook_info
          Types::Response.new(
            result_caster: ->(r) { Types::WebhookInfo.new(**r.to_h) },
            **Client.post(
              url: build_url('getWebhookInfo'),
              parameters: {}
            )
          )
        end
      end
    end
  end
end
