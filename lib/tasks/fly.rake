namespace :fly do
  task :ssh do
    sh 'fly ssh console'
  end

  task :console do
    sh 'fly ssh console -C "rails/bin/rails console"'
  end

  task :dbconsole do
    sh 'fly ssh console -C "rails/bin/rails dbconsole"'
  end

  task :release => 'db:migrate'
end
