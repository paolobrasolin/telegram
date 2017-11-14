# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getwebhookinfo official documentation}.
        #
        def get_webhook_info
          Client.post url: build_url('getWebhookInfo'),
                      parameters: {}
        end
      end
    end
  end
end
