# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#photosize official documentation}.
        #
        # @!attribute [rw] file_id
        #   @return [String]
        # @!attribute [rw] width
        #   @return [Integer]
        # @!attribute [rw] height
        #   @return [Integer]
        # @!attribute [rw] file_size
        #   @return [Integer, nil]
        PhotoSize = Struct.new(
          :file_id,
          :width,
          :height,
          :file_size
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            file_id:,
            width:,
            height:,
            file_size: nil
          )
            super(
              file_id&.to_s,
              width&.to_i,
              height&.to_i,
              (file_size&.to_i unless file_size.nil?)
            )
          end
        end
      end
    end
  end
end
