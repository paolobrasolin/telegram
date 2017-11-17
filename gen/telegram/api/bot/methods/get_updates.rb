# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getupdates official documentation}.
        #
        # @param offset [Integer, nil]
        # @param limit [Integer, nil]
        # @param timeout [Integer, nil]
        # @param allowed_updates [Array<String>, nil]
        def get_updates(
          offset: nil,
          limit: nil,
          timeout: nil,
          allowed_updates: nil
        )
          Types::Response.new(
            **Client.post(
              url: build_url('getUpdates'),
              parameters: {
                offset: offset,
                limit: limit,
                timeout: timeout,
                allowed_updates: allowed_updates
              }
            )
          )
        end
      end
    end
  end
end
