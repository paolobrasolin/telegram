module Telegram
  module API
    module Bot
      module Methods
        # Use this method to get current webhook status. Requires no parameters. On success, returns a WebhookInfo object. If the bot is using getUpdates, will return an object with the _url_ field empty.
        #
        def get_webhook_info
          url = build_url method_name: __method__.to_s.delete('_')
          Telegram::API::Bot::Client.post url: url, parameters: {}
        end

      end
    end
  end
end
