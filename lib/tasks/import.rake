#lib/tasks/import.rake
# encoding: utf-8

require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do
CSV.foreach('Contacts.csv', :headers => true) do |row|
Contact.create!(row.to_hash)
end
end