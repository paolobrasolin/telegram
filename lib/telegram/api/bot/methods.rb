# frozen_string_literal: true

Gem.
  find_files(File.join('telegram', 'api', 'bot', 'methods', '*.rb')).
  each { |path| require path }

module Telegram
  module API
    module Bot
      module Methods
        module Callable
          def call(client)
            Types::Response.new(
              result_caster: self.class::RESULT_CASTER,
              **client.post(
                url: build_url(self.class::METHOD_NAME),
                parameters: self.to_h
              )
            )
          end
        end
      private

        # TODO: save this to a gist - it is pretty neat.
        # def method_parameters_hash(meth, bind)
        #   method(meth).parameters.map do |_, name|
        #     [name, bind.local_variable_get(name)]
        #   end.to_h
        # end
      end
    end
  end
end
