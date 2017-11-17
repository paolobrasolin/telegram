# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Methods
        # See the {https://core.telegram.org/bots/api#getfile official documentation}.
        #
        # @param file_id [String]
        def get_file(
          file_id:
        )
          Types::Response.new(
            result_caster: ->(r) { Types::File.new(**r.to_h) },
            **Client.post(
              url: build_url('getFile'),
              parameters: {
                file_id: file_id
              }
            )
          )
        end
      end
    end
  end
end
