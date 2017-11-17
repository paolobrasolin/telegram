# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#location official documentation}.
        #
        # @!attribute [rw] longitude
        #   @return [Float]
        # @!attribute [rw] latitude
        #   @return [Float]
        Location = Struct.new(
          :longitude,
          :latitude
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            longitude:,
            latitude:
          )
            super(
              longitude&.to_f,
              latitude&.to_f
            )
          end
        end
      end
    end
  end
end
