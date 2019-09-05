# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# theaters = JSON.parse(File.read('db/nycTheaters.json'))

# theaterData = theaters['features']

# theaterData.each do |theater|
#     Activity.create(
#         name: theater['properties']['name'],
#         category: 'theater',
#         longitude: theater['geometry']['coordinates'][0],
#         latitude: theater['geometry']['coordinates'][1],
#         rating: 0,
#         price: 0

#     )
# end

galleries = JSON.parse(File.read('db/nycArtGalleries.json'))

galleryData = galleries['features']

galleryData.each do |gallery|
    Activity.create(
        name: gallery['properties']['name'],
        category: 'gallery',
        longitude: gallery['geometry']['coordinates'][0],
        latitude: gallery['geometry']['coordinates'][1],
        rating: 0,
        price: 0

    )
end

