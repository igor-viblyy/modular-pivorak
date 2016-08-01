module Pivorak
  module Talks
    class Engine < ::Rails::Engine
      isolate_namespace Pivorak::Talks
      paths['app/views'] << 'app/views/pivorak/talks'

      initializer :append_migrations do |app|
        unless app.root.to_s.match(root.to_s)
          config.paths['db/migrate'].expanded.each do |p|
            app.config.paths['db/migrate'] << p
          end
        end
      end

      config.to_prepare do
        Pivorak::ApplicationController.helper(Pivorak::Talks::TalksHelper)
      end
    end
  end
end



