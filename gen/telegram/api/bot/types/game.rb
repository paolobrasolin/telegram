# frozen_string_literal: true

require 'telegram/core_ext'

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#game official documentation}.
        #
        # @!attribute [rw] title
        #   @return [String]
        # @!attribute [rw] description
        #   @return [String]
        # @!attribute [rw] photo
        #   @return [Array<PhotoSize>]
        # @!attribute [rw] text
        #   @return [String, nil]
        # @!attribute [rw] text_entities
        #   @return [Array<MessageEntity>, nil]
        # @!attribute [rw] animation
        #   @return [Animation, nil]
        Game = Struct.new(
          :title,
          :description,
          :photo,
          :text,
          :text_entities,
          :animation
        ) do
          include Telegram::CoreExt::Struct

          def initialize(
            title:,
            description:,
            photo:,
            text: nil,
            text_entities: nil,
            animation: nil
          )
            super(
              title&.to_s,
              description&.to_s,
              photo&.to_a&.map { |o| Types::PhotoSize.new(**o.to_h) },
              (text&.to_s unless text.nil?),
              (text_entities&.to_a&.map { |o| Types::MessageEntity.new(**o.to_h) } unless text_entities.nil?),
              (Types::Animation.new(**animation.to_h) unless animation.nil?)
            )
          end
        end
      end
    end
  end
end
