# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # See the {https://core.telegram.org/bots/api#messageentity official documentation}.
        #
        # @!attribute [rw] type
        #   @return [String]
        # @!attribute [rw] offset
        #   @return [Integer]
        # @!attribute [rw] length
        #   @return [Integer]
        # @!attribute [rw] url
        #   @return [String, nil]
        # @!attribute [rw] user
        #   @return [User, nil]
        MessageEntity = Struct.new(
          :type,
          :offset,
          :length,
          :url,
          :user
        ) do
          def initialize(
            type:,
            offset:,
            length:,
            url: nil,
            user: nil
          )
            super(
              type&.to_s,
              offset&.to_i,
              length&.to_i,
              (url&.to_s unless url.nil?),
              (User.new(**user.to_h) unless user.nil?)
            )
          end
        end
      end
    end
  end
end
