# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#document official documentation}.
        #
        # @!attribute [rw] file_id
        #   @return [String]
        # @!attribute [rw] thumb
        #   @return [PhotoSize, nil]
        # @!attribute [rw] file_name
        #   @return [String, nil]
        # @!attribute [rw] mime_type
        #   @return [String, nil]
        # @!attribute [rw] file_size
        #   @return [Integer, nil]
        Document = Struct.new(
          :file_id,
          :thumb,
          :file_name,
          :mime_type,
          :file_size
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            file_id:,
            thumb: nil,
            file_name: nil,
            mime_type: nil,
            file_size: nil
          )
            super(
              file_id&.to_s,
              (Types::PhotoSize.new(**thumb.to_h) unless thumb.nil?),
              (file_name&.to_s unless file_name.nil?),
              (mime_type&.to_s unless mime_type.nil?),
              (file_size&.to_i unless file_size.nil?)
            )
          end
        end
      end
    end
  end
end
