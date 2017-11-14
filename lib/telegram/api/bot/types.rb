Gem
  .find_files(File.join *%w{telegram api bot types *.rb})
  .each { |path| require path }

module Telegram
  module API
    module Bot
      module Types
        class Base < Struct
          def to_h
            members.zip(values.map { |m| m.is_a?(Base) ? m.to_h : m }).to_h
          end

          private

          def cast_string(object)
            # String(object) unless object.nil?
            object&.to_s
          end

          def cast_integer(object)
            # Integer(object) unless object.nil?
            object&.to_i
          end

          def cast_float(object)
            # Float(object) unless object.nil?
            object&.to_f
          end

          def cast_boolean(object)
            !!object unless object.nil?
          end

          def cast_array(object)
            # Array(object)
            object&.to_a
          end

          def cast_array_array(object)
            # Array(object).map { |subobject| Array(subobject) }
            object&.to_a&.map(&:to_a)
          end

          def cast_hash(object)
            # Hash(object)
            object.to_h
          end
        end

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
              (!! ok unless ok.nil?),
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
