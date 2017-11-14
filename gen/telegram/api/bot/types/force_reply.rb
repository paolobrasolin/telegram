# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#forcereply official documentation}.
        #
        # @!attribute [rw] force_reply
        #   @return [TrueClass]
        # @!attribute [rw] selective
        #   @return [Boolean, nil]
        ForceReply = Struct.new(
          :force_reply,
          :selective
        ) do
          def initialize(
            force_reply:,
            selective: nil
          )
            super(
              (!!force_reply unless force_reply.nil?),
              (!!selective unless selective.nil?)
            )
          end
        end
      end
    end
  end
end
