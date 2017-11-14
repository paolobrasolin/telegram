# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getme official documentation}.
        #
        def get_me
          Client.post url: build_url('getMe'),
                      parameters: {}
        end
      end
    end
  end
end
