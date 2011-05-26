require 'faker'

namespace :db do
  desc "Fill site table with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke

    #------------------
    @no_sites = 3 
    
    Site.create!(         :name     => "Raj",
                          :email    => "rajkumar.projects.db@gmail.com",
                          :password => "foobar",
                          :password_confirmation   => "foobar",
                          :language => "es")
    

    @no_sites.times do |n| 
      name = Faker::Name.first_name
      email = Faker::Internet.email
      password = "foobar"
      password_confirmation = "foobar"
      user = Site.create!(:name => name, 
                          :email => email,
                          :password => password,
                          :password_confirmation => password_confirmation
                          )
      @no_recordss = (1..10).to_a.shuffle.first
      @no_sites.times do |k|
        about_id = (0..@no_sitess).to_a.shuffle.first 
        content = Faker::Lorem.sentence(2)
        content = content.slice(0,140)
        category = 0
        site.records.create!(     :content => content, 
                                  :about_id => about_id,
                                  :category => category 
                                  )
      end
    end

  end
end
      
