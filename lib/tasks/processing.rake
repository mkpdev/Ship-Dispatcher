namespace :processing_ship do
  desc 'Process Ship'
  task processing: :environment do
    ProcessShipJob.perform_now
    puts 'Done!'
  end
end