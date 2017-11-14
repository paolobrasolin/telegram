# frozen_string_literal: true

module Telegram
  module API
    module Bot
      module Types
        # Holds the structured client responses.
        #
        # @!attribute [rw] ok
        #   @return [Boolean]
        # @!attribute [rw] result
        #   @return [TODO]
        # @!attribute [rw] description
        #   @return [String, nil]
        # @!attribute [rw] error_code
        #   @return [Integer, nil]
        # @!attribute [rw] parameters
        #   @return [ResponseParameters, nil]
        Response = Struct.new(
          :ok,
          :result,
          :description,
          :error_code,
          :parameters
        ) do
          def initialize(
            ok:,
            result: nil,
            description: nil,
            error_code: nil,
            parameters: nil
          )
            super(
              (!!ok unless ok.nil?),
              result,
              description&.to_s,
              error_code&.to_i,
              (ResponseParameters.new(**parameters.to_h) unless parameters.nil?)
            )
          end
        end
      end
    end
  end
end
