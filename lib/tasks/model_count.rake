namespace :model_count do
  desc 'Count of Masters'
  task :count_masters, [:Master] => :environment do
    count = Master.count
    puts count
  end

  desc 'Count of Apprentices'
  task :count_apprentices => :environment do
    count = Apprentice.count
    puts count
  end
end