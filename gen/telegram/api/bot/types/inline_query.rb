# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#inlinequery official documentation}.
        #
        # @!attribute [rw] id
        #   @return [String]
        # @!attribute [rw] from
        #   @return [User]
        # @!attribute [rw] location
        #   @return [Location, nil]
        # @!attribute [rw] query
        #   @return [String]
        # @!attribute [rw] offset
        #   @return [String]
        InlineQuery = Struct.new(
          :id,
          :from,
          :location,
          :query,
          :offset
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            id:,
            from:,
            location: nil,
            query:,
            offset:
          )
            super(
              id&.to_s,
              Types::User.new(**from.to_h),
              (Types::Location.new(**location.to_h) unless location.nil?),
              query&.to_s,
              offset&.to_s
            )
          end
        end
      end
    end
  end
end
