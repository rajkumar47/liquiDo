require 'faker'

namespace :db do
  desc "Fill site table with sample data"
  task :populate => :environment do
    # Rake::Task['db:reset'].invoke

    #------------------
    
    @no_sites = 2 
    site1 = Site.create!( :name      => "Summer Events",
                          :photo    => "Event Picture",
                          :photo2   => "more pics",
                          :photo3   => "more pics",
                          :doc      => "Flyer",
                          :comment  => "Commnets",
                          :p6       => "Event Type",
                          :p7       => "Location",
                          :p8       => "Date",
                          :p9       => "Time",
                          :p10      => "Price",
                          :p12      => "Regular Event"
                          )

    site1.records.create!(  :photo_file_name  => "se1_pic1.jpg", 
                            :photo2_file_name => "se1_pic2.jpg", 
                            :photo3_file_name => "se1_pic3.jpg", 
                            :doc_file_name    => "se1_flyer.pdf",
                            :comment          => "Loved it last month!",
                            :p6             => "Outdoor Music",
                            :p7             => "South Street Seaport",
                            :p8             => "June 11",
                            :p9             => "7 PM",
                            :p10            => "Free",
                            :p12            => "Monthly"
                          )
    
    @no_records = (1..10).to_a.shuffle.first
    @no_records.times do |n| 
      @days_ahead = (1..100).to_a.shuffle.first
      date = Date.today + @days_ahead
      @seconds_ahead = (1..24).to_a.shuffle.first * 3600
      time = (Time.now + @seconds_ahead).strftime( "%I %M %p")

      photo_file_name   = "se1_pic1.jpg"
      photo2_file_name  = "se1_pic2.jpg"
      photo3_file_name  = "se1_pic3.jpg"
      doc_file_name     = "se1_flyer.pdf"   
      comment           = Faker::Lorem.sentence
      p6        = %w{Music Dance Concert Movie Party}.shuffle.first 
      p7        = Faker::Address.street_name
      p8        = date 
      p9        = time 
      p10       = %w{Free $5 $18 $8 $10 $20}.shuffle.first 
      p12       = %w{Yes No Monthly Weekly Varies}.shuffle.first 

      site1.records.create!(:photo_file_name  => photo_file_name, 
                            :photo2_file_name => photo2_file_name, 
                            :photo3_file_name => photo3_file_name, 
                            :doc_file_name    => doc_file_name,
                            :comment          => comment,
                            :p6           => p6,
                            :p7           => p7,
                            :p8           => p8,
                            :p9           => p9,
                            :p10          => p10,
                            :p12          => p12
                          )
    end   # times

  end   # task
end   # namespace
      
