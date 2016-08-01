module Pivorak
  module Events
    class Engine < ::Rails::Engine
      isolate_namespace Pivorak::Events
      paths['app/views'] << 'app/views/pivorak/events'

      initializer :append_migrations do |app|
        unless app.root.to_s.match(root.to_s)
          config.paths['db/migrate'].expanded.each do |p|
            app.config.paths['db/migrate'] << p
          end
        end
      end

      config.to_prepare do
        Pivorak::ApplicationController.helper(Pivorak::Events::EventsHelper)
      end
    end
  end
end



