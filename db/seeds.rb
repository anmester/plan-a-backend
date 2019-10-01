# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

theaters = JSON.parse(File.read('db/nycTheaters.json'))

theaterData = theaters['features']

theaterData.each do |theater|
    Activity.create(
        name: theater['properties']['name'],
        category: 'theater',
        longitude: theater['geometry']['coordinates'][0],
        latitude: theater['geometry']['coordinates'][1],
        description: theater['properties']['address1'],
        link: theater['properties']['url'],
        rating: 0,
        price: 0

    )
end

galleries = JSON.parse(File.read('db/nycArtGalleries.json'))

galleryData = galleries['features']

galleryData.each do |gallery|
    Activity.create(
        name: gallery['properties']['name'],
        category: 'gallery',
        longitude: gallery['geometry']['coordinates'][0],
        latitude: gallery['geometry']['coordinates'][1],
        description: gallery['properties']['address1'],
        link: gallery['properties']['url'],
        rating: 0,
        price: 0
    )
end

parksEvents = JSON.parse(File.read('db/parksEvents.json'))

parksEvents.each do |parkEvents|
    Activity.create(
        name: parkEvents['title'],
        category: 'Outdoor Event',
        latitude: parkEvents['coordinates'].slice(0,20),
        longitude: parkEvents['coordinates'].slice(22,42),
        description: parkEvents['description'],
        link: parkEvents['link'],
        rating: 0,
        price: 0

    )
end

Activity.create(
    name: 'Her Name is Han',
    category: 'Restaurant',
    latitude: 40.746265,
    longitude: -73.984781,
    description: 'Rustic-modern space for homey Korean pots, noodles & BBQ, plus cocktails & house-infused soju.',
    link: 'https://www.hernameishan.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Kopitiam',
    category: 'Restaurant',
    latitude: 40.713833,
    longitude: -73.990930,
    description: 'Small counter spot for sweet & savory Malaysian dishes, plus breakfast items, coffees & teas.',
    link: 'https://www.kopitiamnyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: "Sarge's Delicatessen & Diner",
    category: 'Restaurant',
    latitude: 40.747350,
    longitude: -73.977244,
    description: 'Pastrami, matzo ball soup & other Jewish deli fare are found at this updated diner open 24/7.',
    link: 'https://www.sargesdeli.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Lilia',
    category: 'Restaurant',
    latitude: 40.717535,
    longitude: -73.952445,
    description: 'In a redone auto-body shop, this Italian place offers wood-fired Italian fare & housemade pastas.',
    link: 'https://www.lilianewyork.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Emily West Village',
    category: 'Restaurant',
    latitude: 40.729385, 
    longitude: -74.003784,
    description: 'Snug spot offering gourmet Detroit-style pizzas, plus a full bar with local draft beer & many wines.' ,
    link: 'https://www.pizzalovesemily.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Tim Ho Wan',
    category: 'Restaurant',
    latitude: 40.731319, 
    longitude: -73.990155,
    description: "Branch of an acclaimed Hong Kong–based chain specializing in dim sum served day & night.",
    link: 'https://www.timhowanusa.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Minetta Tavern',
    category: 'Restaurant',
    latitude: 40.729995, 
    longitude: -74.000709,
    description: 'Celeb-magnet hot-ticket tavern with upper-end French bistro fare & reimagined vintage decor.',
    link: 'https://www.minettatavernny.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Red Hook Tavern',
    category: 'Restaurant',
    latitude: 40.677871, 
    longitude: -74.012079,
    description: 'Classic American plates inspired by iconic NYC haunts are served in a warm, wood-accented space.',
    link: 'https://www.redhooktavern.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Clinton St. Baking Company',
    category: 'Restaurant',
    latitude: 40.721267, 
    longitude: -73.983859,
    description: 'American restaurant especially known for its very popular weekend brunch & its pancakes.',
    link: 'https://www.clintonstreetbaking.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Uncle Boons',
    category: 'Restaurant',
    latitude: 40.721355, 
    longitude: -73.994365,
    description: 'Creative Thai eats & cocktails in a small, funky cafe with brick walls & Bangkok flea market-decor.',
    link: 'https://www.uncleboons.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Niche Niche',
    category: 'Restaurant',
    latitude: 40.727724, 
    longitude: -74.002643,
    description: 'Dinner party-like concept pairing curated wines chosen by industry experts with complementary bites.',
    link: 'https://www.nichenichenyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Pasquale Jones',
    category: 'Restaurant',
    latitude: 40.721085, 
    longitude: -73.996762,
    description: 'Italian place by the Charlie Bird team for wood-fired pies, meats and fish from the open kitchen.',
    link: 'https://www.pasqualejones.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'El Rio Grande',
    category: 'Restaurant',
    latitude: 40.748082, 
    longitude: -73.976793,
    description: 'Margaritas & Tex-Mex fare fuel an often bustling scene at this joint with seasonal outdoor seating.',
    link: 'https://www.elriograndenyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Dante',
    category: 'Restaurant',
    latitude: 40.728883,
    longitude: -74.001652,
    description: 'Legendary circa-1915 cafe serving small plates & cocktails in an updated historic setting.',
    link: 'https://www.dante-nyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Nom Wah Tea Parlor',
    category: 'Restaurant',
    latitude: 40.714451, 
    longitude: -73.998273,
    description: 'Vintage dim sum parlor dating back to 1920 with a drink menu that includes tea, beer & wine.',
    link: 'https://www.nomwah.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Misi',
    category: 'Restaurant',
    latitude: 40.713411, 
    longitude: -73.966632,
    description: 'Contemporary-chic Italian dining space dishing up elevated antipasto & handmade pasta dishes.',
    link: 'https://www.misinewyork.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Chez Ma Tante',
    category: 'Restaurant',
    latitude: 40.726911, 
    longitude: -73.957406,
    description: 'American restaurant & bar with Canadian-inspired offerings, including a raw bar & seasonal plates.',
    link: 'https://www.chezmatantenyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Union Square Cafe',
    category: 'Restaurant',
    latitude: 40.737768, 
    longitude: -73.987878,
    description: "Danny Meyer's first restaurant serves seasonal New American fare in a casually refined setting.",
    link: 'https://www.unionsquarecafe.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Shuka',
    category: 'Restaurant',
    latitude: 40.727069, 
    longitude: -74.002822,
    description: 'Place for contemporary Eastern Mediterranean food, wine & cocktails in a stylish setting.',
    link: 'https://www.shukanewyork.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Oxomoco',
    category: 'Restaurant',
    latitude: 40.729821, 
    longitude: -73.955476,
    description: 'Airy Mexican eatery offering wood-fired dishes plus ample tequila & mezcal cocktails & a patio.',
    link: 'https://www.oxomoconyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'The Belfry',
    category: 'Bar',
    latitude: 40.732673, 
    longitude: -73.986361,
    description: 'Happening spot for local craft beer, wine, cocktails & a retro, old-timey atmosphere.',
    link: 'https://www.belfrynyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Le Poisson Rouge',
    category: 'Bar',
    latitude: 40.728505, 
    longitude: -74.000037,
    description: 'Barnlike multimedia concert venue, bar & art gallery that showcases avant-garde acts.',
    link: 'https://www.lpr.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'The Garrett East',
    category: 'Bar',
    latitude: 40.729447, 
    longitude: -73.980758,
    description: 'Resembling a posh, retro apartment, this bar serves seasonal cocktails, wines & canned beers.',
    link: 'https://www.garretnyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: "Ted's Corner Tavern",
    category: 'Bar',
    latitude: 40.746236, 
    longitude: -73.977524,
    description: 'Low-key bar specializing in craft beers plus Mediterranean bites in a dimly lit corner setting.',
    link: 'https://www.tedscornertavern.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Goodnight Sonny',
    category: 'Bar',
    latitude: 40.727610, 
    longitude: -73.985076,
    description: 'By the Wayland team, this tile-floored space offers a raw bar, sandwiches & seasonal cocktails.',
    link: 'https://www.goodnightsonnynyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: "Mother's Ruin",
    category: 'Bar',
    latitude: 40.721302, 
    longitude: -73.995022,
    description: 'Bespoke cocktails, bar snacks & booze-filled slushies keep this neighborhood lounge bustling.',
    link: 'https://www.mothersruinnyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Spring Lounge',
    category: 'Bar',
    latitude: 40.721911, 
    longitude: -73.996441,
    description: 'Neighborhood dive bar since the 1920s draws patrons from 8AM on for basic drinks & weekend bagels.',
    link: 'https://www.thespringlounge.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'The Wayland',
    category: 'Bar',
    latitude: 40.725124, 
    longitude: -73.977897,
    description: 'Cutting-edge cocktails are served in a no-frills setting at this laid-back barroom.',
    link: 'https://www.thewaylandnyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Sweet and Vicious',
    category: 'Bar',
    latitude: 40.721324, 
    longitude: -73.994278,
    description: 'A low-key spot for beer & drinks with benches & outdoor tables.',
    link: 'https://www.sweetandvicious.nyc',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Houston Hall',
    category: 'Bar',
    latitude: 40.728657, 
    longitude: -74.004773,
    description: 'Craft brews & bar bites from Greenpoint Beer Works served in a cavernous, industrial-chic setting.',
    link: 'https://www.houstonhallny.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Niagara',
    category: 'Bar',
    latitude: 40.725913, 
    longitude: -73.983462,
    description: 'This longtime watering hole on a busy Alphabet City corner features DJ-spun tunes & a photo booth.',
    link: 'https://www.niagaranyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Whiskey Town',
    category: 'Bar',
    latitude: 40.725848, 
    longitude: -73.990221,
    description: 'Small, casual bar with DJs, tattoo-inspired art in the bathrooms & old wine boxes on the ceiling.',
    link: 'https://www.whiskeytownbar.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Carroll Place',
    category: 'Bar',
    latitude: 40.728639, 
    longitude: -73.999769,
    description: 'Evocative gastropub & wine bar pairing its drinks with Italian-influenced fare in comfortable digs',
    link: 'https://www.carrollplacenyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Loverboy',
    category: 'Bar',
    latitude: 40.724805, 
    longitude: -73.978487,
    description: 'Casually hip corner bar serving clever house cocktails, tricked-out bar bites & pizza by the slice.',
    link: 'https://www.loverboynyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'B Bar & Grill',
    category: 'Bar',
    latitude: 40.727070, 
    longitude: -73.991912,
    description: 'A large, happening bar, lounge & American eatery with a party-friendly patio space.',
    link: 'https://www.bbarandgrill.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'The Wren',
    category: 'Bar',
    latitude: 40.726332, 
    longitude: -73.992210,
    description: 'Hearty, upscale pub eats, craft cocktails, beer & lots of spirits in a rustic, happening space.',
    link: 'https://www.thewrennyc.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: "McSorley's Old Ale House",
    category: 'Bar',
    latitude: 40.728764, 
    longitude: -73.989710,
    description: 'Old-time bar with Irish bartenders, 2 kinds of ale (light or dark) & sawdust on the floor.',
    link: 'https://www.mcsorleysoldalehouse.nyc',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Existing Conditions',
    category: 'Bar',
    latitude: 40.733098, 
    longitude: -73.998091,
    description: 'Sparse, exposed brick space pouring sophisticated drinks & inventive bar food.',
    link: 'https://www.exconditions.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Galway Hooker',
    category: 'Bar',
    latitude: 40.734573, 
    longitude: -74.002022,
    description: 'Named after a boat, this 4-story pub boasts a fireplace & billiards along with a sizable beer menu.',
    link: 'https://www.galwayhookerbar.com',
    rating: 0,
    price: 0

)

Activity.create(
    name: 'Mermaid Oyster Bar',
    category: 'Bar',
    latitude: 40.728893,
    longitude: -74.001877,
    description: 'Upscale-casual seafood spot with a coastal vibe known for its lobster rolls & oyster happy hours.',
    link: 'https://www.themermaidnyc.com',
    rating: 0,
    price: 0

)

