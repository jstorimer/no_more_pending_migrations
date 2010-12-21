require 'rails'

module NoMorePendingMigrations
  class Railtie < Rails::Railtie
    rake_tasks do
      load "no_more_pending_migrations/tasks.rake"
    end
  end
end
