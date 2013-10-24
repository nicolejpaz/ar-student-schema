require_relative '../app/models/teacher'
require 'Faker'

module TeachersImporter
  def self.import
    9.times do |row|
      Teacher.create(:name => "#{Faker::Name.first_name} #{Faker::Name.last_name}")
      Teacher.create(:email => "#{Faker::Internet.email}")
      Teacher.create(:phone => "415-555-1212")
    end
  end
end
