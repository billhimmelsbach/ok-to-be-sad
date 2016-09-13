desc "This task is called by the Heroku scheduler add-on"

task remove_excessive_messages: :environment do
  puts "Removing excessive messages now..."
  Message.remove_excessive!
end
