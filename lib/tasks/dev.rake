namespace :dev do
  desc "Clear tmap, database and re-run all migrations and db:seed"
  task rebuild: [ "tmp:clear", "log:clear", "db:drop", "db:create", "db:migrate", "dev:build", "db:seed" ]
end
