# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#voice official documentation}.
        #
        # @!attribute [rw] file_id
        #   @return [String]
        # @!attribute [rw] duration
        #   @return [Integer]
        # @!attribute [rw] mime_type
        #   @return [String, nil]
        # @!attribute [rw] file_size
        #   @return [Integer, nil]
        Voice = Struct.new(
          :file_id,
          :duration,
          :mime_type,
          :file_size
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            file_id:,
            duration:,
            mime_type: nil,
            file_size: nil
          )
            super(
              file_id&.to_s,
              duration&.to_i,
              (mime_type&.to_s unless mime_type.nil?),
              (file_size&.to_i unless file_size.nil?)
            )
          end
        end
      end
    end
  end
end
