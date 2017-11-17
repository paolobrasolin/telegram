# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#responseparameters official documentation}.
        #
        # @!attribute [rw] migrate_to_chat_id
        #   @return [Integer, nil]
        # @!attribute [rw] retry_after
        #   @return [Integer, nil]
        ResponseParameters = Struct.new(
          :migrate_to_chat_id,
          :retry_after
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            migrate_to_chat_id: nil,
            retry_after: nil
          )
            super(
              (migrate_to_chat_id&.to_i unless migrate_to_chat_id.nil?),
              (retry_after&.to_i unless retry_after.nil?)
            )
          end
        end
      end
    end
  end
end
