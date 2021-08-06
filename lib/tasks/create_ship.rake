namespace :create_ship do
  desc 'Create Ship'
  task create_ship_with_job: :environment do
    ShipCreateJob.perform_now
    puts 'Done!'
  end
end