# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#choseninlineresult official documentation}.
        #
        # @!attribute [rw] result_id
        #   @return [String]
        # @!attribute [rw] from
        #   @return [User]
        # @!attribute [rw] location
        #   @return [Location, nil]
        # @!attribute [rw] inline_message_id
        #   @return [String, nil]
        # @!attribute [rw] query
        #   @return [String]
        ChosenInlineResult = Struct.new(
          :result_id,
          :from,
          :location,
          :inline_message_id,
          :query
        ) do
          def initialize(
            result_id:,
            from:,
            location: nil,
            inline_message_id: nil,
            query:
          )
            super(
              result_id&.to_s,
              User.new(**from.to_h),
              (Location.new(**location.to_h) unless location.nil?),
              (inline_message_id&.to_s unless inline_message_id.nil?),
              query&.to_s
            )
          end
        end
      end
    end
  end
end
