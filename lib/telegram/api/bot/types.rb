# frozen_string_literal: true

# frozen_string_literal: true

Gem.
  find_files(File.join('telegram', 'api', 'bot', 'types', '*.rb')).
  each { |path| require path }

module Telegram
  module API
    module Bot
      module Types
        class Base < Struct
          def to_h
            members.zip(values.map { |m| m.is_a?(Base) ? m.to_h : m }).to_h
          end
        end
      end
    end
  end
end
