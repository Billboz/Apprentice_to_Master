namespace :model_count do
  desc 'Count of Models'
  task :count, [:Master] => :environment do
    Rails.application.eager_load!

    ActiveRecord::Base.descendants.each do |model|
      puts "#{model.table_name}: #{model.count}"
    end
  end
end