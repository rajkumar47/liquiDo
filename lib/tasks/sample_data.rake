require 'faker'

namespace :db do
  desc "Fill site table with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke

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
                          :p11      => "unused",
                          :p12      => "Repeating Event?"
                          )

    site1.records.create!(  :photo_file_name  => "se1_pic1.jpg", 
                            :photo2_file_name => "se1_pic2.jpg", 
                            :photo3_file_name => "se1_pic3.jpg", 
                            :doc_file_name    => "se1_flyer.pdf",
                            :comment          => "Loved it last month!",
                            :p6             => "Outdoor Music",
                            :p7             => "South Street Seaport",
                            :p8             => "Sat, June 11",
                            :p9             => "7 PM",
                            :p10            => "Free",
                            :p12            => "Monthly"
                          )
    
    @no_records = (4..10).to_a.shuffle.first
    @no_records.times do |n| 
      @days_ahead = (1..100).to_a.shuffle.first
      date = (Date.today + @days_ahead).strftime("%a, %b %d")
      @seconds_ahead = (1..24).to_a.shuffle.first * 3600
      time = (Time.now + @seconds_ahead).strftime( "%I %M %p")

      doc_file_name     = "se1_flyer.pdf"   
      comment           = Faker::Lorem.sentence
      p6        = %w{Music Dance Concert Movie}.shuffle.first 
      photo_file_name   = p6 + "1.jpg"
      photo2_file_name  = p6 + "2.jpg"
      photo3_file_name  = p6 + "3.jpg"
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

    # ------------------------------------------------------
    # Site2: Sports Cars
    site2 = Site.create!( :name      => "Sports Cars",
                          :photo    => "Picture",
                          :photo2   => "Another view",
                          :photo3   => "Third Image",
                          :doc      => "Flyer",
                          :comment  => "Comments",
                          :p6       => "Model Name",
                          :p7       => "Maker",
                          :p8       => "Type",
                          :p9       => "First Year",
                          :p10      => "Base Price",
                          :p11      => "unused",
                          :p12      => "In Production?"
                          )

    site2.records.create!(  :photo_file_name  => "Jaguar1.jpg", 
                            :photo2_file_name => "Jaguar2.jpg", 
                            :photo3_file_name => "Jaguar3.jpg", 
                            :doc_file_name    => "c1_flyer.pdf",
                            :comment          => "Loved the ride",
                            :p6             => "E-Type",
                            :p7             => "Jaguar",
                            :p8             => "2-door",
                            :p9             => "1961",
                            :p10            => "unknown",
                            :p12            => "No"
                          )
    
    @no_records = (10..15).to_a.shuffle.first
    @no_records.times do |n| 
      doc_file_name     = "c1_flyer.pdf"   
      comment           = Faker::Lorem.sentence
      p6        = %w{E-Type XJ-6 A-11 Phantom Cloud ES-21 P-1 F-1}.shuffle.first 
      p7        = %w{Jaguar Mercedes AstonMartin Ferrari Lamborghini Bugatti Chevy Mclaren}.shuffle.first 
      photo_file_name   = p7 + "1.jpg"
      photo2_file_name  = p7 + "2.jpg"
      photo3_file_name  = p7 + "3.jpg"
      p8        = %w{coupes hatchback sedan 2-door gull-wing}.shuffle.first 
      p9        = %w{1938 2000 1989 1999 2001 1975 1985 1988 2010}.shuffle.first 
      p10       = %w{NA $30K $70K $120K varies unknown }.shuffle.first 
      p12       = %w{Yes No No No Limited}.shuffle.first 

      site2.records.create!(:photo_file_name  => photo_file_name, 
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
      
