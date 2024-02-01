# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
  # ["BHM", "DHN", "MGM", "FAI","PHX","LGB","SFO","MTJ","DAB","IND","ICT","JFK","PHL","MFE",].each do |airport|
  #   Airport.find_or_create_by!(name: airport)
  # end
  # day = Date.tomorrow
  # 50.times do
  #   depart = Random.rand(14)
  #   arr = Random.rand(14)
  #   if depart == 0 then depart = 1 end
  #   if arr == 0 then arr = 1 end
  #   if arr == depart then arr = arr +1 end
  #   p "d #{depart} a #{arr} day #{day}"
  #   Flight.create(date: day, minutes: 0, departure_id: depart, arrival_id: arr)
  #   day = day.tomorrow
  # end
