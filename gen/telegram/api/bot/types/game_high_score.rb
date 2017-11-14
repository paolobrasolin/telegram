# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#gamehighscore official documentation}.
        #
        # @!attribute [rw] position
        #   @return [Integer]
        # @!attribute [rw] user
        #   @return [User]
        # @!attribute [rw] score
        #   @return [Integer]
        GameHighScore = Struct.new(
          :position,
          :user,
          :score
        ) do
          def initialize(
            position:,
            user:,
            score:
          )
            super(
              position&.to_i,
              User.new(**user.to_h),
              score&.to_i
            )
          end
        end
      end
    end
  end
end
