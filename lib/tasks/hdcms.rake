namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app mdb-api --confirm mdb-api
      heroku run rake db:migrate --app mdb-api
      heroku run rake db:seed --app mdb-api')	
  end
end
