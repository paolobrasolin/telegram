# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#chatphoto official documentation}.
        #
        # @!attribute [rw] small_file_id
        #   @return [String]
        # @!attribute [rw] big_file_id
        #   @return [String]
        ChatPhoto = Struct.new(
          :small_file_id,
          :big_file_id
        ) do
          def initialize(
            small_file_id:,
            big_file_id:
          )
            super(
              small_file_id&.to_s,
              big_file_id&.to_s
            )
          end
        end
      end
    end
  end
end
