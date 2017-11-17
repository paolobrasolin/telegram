# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getme official documentation}.
        #
        def get_me
          Types::Response.new(
            result_caster: ->(r) { Types::User.new(**r.to_h) },
            **Client.post(
              url: build_url('getMe'),
              parameters: {}
            )
          )
        end
      end
    end
  end
end
