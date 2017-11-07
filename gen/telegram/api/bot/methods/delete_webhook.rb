module Telegram
  module API
    module Bot
      module Methods
        # Use this method to remove webhook integration if you decide to switch back to getUpdates. Returns _True_ on success. Requires no parameters.
        #
        def delete_webhook
          url = build_url method_name: __method__.to_s.delete('_')
          Telegram::API::Bot::Client.post url: url, parameters: {}
        end

      end
    end
  end
end
