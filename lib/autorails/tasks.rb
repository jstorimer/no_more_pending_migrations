# assumes that there is an existing task named db:abort_if_pending_migrations

abort_task = Rake::Task['db:abort_if_pending_migrations']
abort_task.clear_actions # clear the default behaviour

abort_task.enhance do
  pending_migrations = ActiveRecord::Migrator.new(:up, 'db/migrate').pending_migrations

  if pending_migrations.any?
    puts "You have #{pending_migrations.size} pending migrations:"
    pending_migrations.each do |pending_migration|
      puts '  %4d %s' % [pending_migration.version, pending_migration.name]
    end
    puts
    puts 'Autorails will now run these migrations.'
    puts

    ActiveRecord::Migration.verbose = true
    ActiveRecord::Migrator.migrate("db/migrate/")
    Rake::Task["db:schema:dump"].invoke if ActiveRecord::Base.schema_format == :ruby
  end
end

