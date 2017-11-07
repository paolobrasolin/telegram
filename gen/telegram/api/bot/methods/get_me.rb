module Telegram
  module API
    module Bot
      module Methods
        # A simple method for testing your bot's auth token. Requires no parameters. Returns basic information about the bot in form of a User object.
        #
        def get_me
          url = build_url method_name: __method__.to_s.delete('_')
          Telegram::API::Bot::Client.post url: url, parameters: {}
        end

      end
    end
  end
end
