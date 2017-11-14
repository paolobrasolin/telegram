# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#videonote official documentation}.
        #
        # @!attribute [rw] file_id
        #   @return [String]
        # @!attribute [rw] length
        #   @return [Integer]
        # @!attribute [rw] duration
        #   @return [Integer]
        # @!attribute [rw] thumb
        #   @return [PhotoSize, nil]
        # @!attribute [rw] file_size
        #   @return [Integer, nil]
        VideoNote = Struct.new(
          :file_id,
          :length,
          :duration,
          :thumb,
          :file_size
        ) do
          def initialize(
            file_id:,
            length:,
            duration:,
            thumb: nil,
            file_size: nil
          )
            super(
              file_id&.to_s,
              length&.to_i,
              duration&.to_i,
              (PhotoSize.new(**thumb.to_h) unless thumb.nil?),
              (file_size&.to_i unless file_size.nil?)
            )
          end
        end
      end
    end
  end
end
