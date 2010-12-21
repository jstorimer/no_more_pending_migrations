require 'rails'

module NoMorePendingMigrations
  class Railtie < Rails::Railtie
    railtie_name :no_more_pending_migrations

    rake_tasks do
      load "no_more_pending_migrations/tasks.rake"
    end
  end
end
