# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.where(email: 'test@test.test').first_or_create(password: '12345678', password_confirmation: '12345678')

apartments = [
  {
    street: '1234 Main St',
    city: 'Tulsa',
    state: 'Oklahoma',
    manager: 'Severus Snape',
    email: 'ssssnape@gamil.com',
    price: '15 pounds',
    bedrooms: 4,
    bathrooms: 2,
    pets: 'Allowed',
    image: 'https://rentpath-res.cloudinary.com/$img_current/t_3x2_jpg_xl/219b75c0d580fc117afc557b2dcb2dad',
  },
  {
    street: '7625 S Ok Street',
    city: 'Tulsa',
    state: 'Oklahoma',
    manager: 'Bob Stevens',
    email: 'manager@gamil.com',
    price: '$1000',
    bedrooms: 3,
    bathrooms: 2,
    pets: 'Allowed if not annoying',
    image: 'https://images1.apartments.com/i2/IGQR-Bi4j5ngaUdj7Y-XRj7WlSE5CO2r6WAIcnk7fK8/117/eastgate-apartments-tulsa-ok-primary-photo.jpg',
  },
  {
    street: '634 S Maripul Way',
    city: 'Tulsa',
    state: 'United Kingdom',
    manager: 'Ricky Bobby',
    email: 'racer@gmail.com',
    price: '$1100',
    bedrooms: 5,
    bathrooms: 3,
    pets: 'Cats are allowed',
    image: 'https://images.squarespace-cdn.com/content/v1/5c2e2a747e3c3ae3b81c365d/1608602073871-B9D9YJX2E0C5WCCX2CFV/Cover+Photo.jpg?format=2500w',
  },
  {
    street: 'Knockturn Alley',
    city: 'Tulsa',
    state: 'Jack',
    manager: 'Bellatrix LeStrange',
    email: 'strange@gmail.com',
    price: '300 pounds',
    bedrooms: 2,
    bathrooms: 1,
    pets: 'Only Snakes',
    image: 'https://images1.apartments.com/i2/SRoYlp118mAkFvfsrZh2qagr5phn0zf2BUWrm-qQx8w/111/the-flats-on-archer-tulsa-ok-primary-photo.jpg',
  },
  {
    street: 'Grimmauld Place',
    city: 'Tulsa',
    state: 'United Kingdom',
    manager: 'Albus Dumbledore',
    email: 'albus@gmail.com',
    price: '100 pounds',
    bedrooms: 6,
    bathrooms: 4,
    pets: 'For anyone pure of heart',
    image: 'https://images.squarespace-cdn.com/content/v1/5c2e2a747e3c3ae3b81c365d/1608602073871-B9D9YJX2E0C5WCCX2CFV/Cover+Photo.jpg?format=2500w',
  },
  {
    street: 'Overlook Hotel',
    city: 'Tulsa',
    state: 'United Kingdom',
    manager: 'Albus Dumbledore',
    email: 'albus@gmail.com',
    price: '100 pounds',
    bedrooms: 6,
    bathrooms: 4,
    pets: 'For anyone pure of heart',
    image: 'https://images1.apartments.com/i2/Q1uIu8NyDADecDp8ZQsHGS7ltkoVQ-MKEtoxE2Ngjvs/111/image.jpg',
  },
  {
    street: 'Tulsa Kingdom',
    city: 'Tulsa',
    state: 'United Kingdom',
    manager: 'Albus Dumbledore',
    email: 'albus@gmail.com',
    price: '100 pounds',
    bedrooms: 6,
    bathrooms: 4,
    pets: 'For anyone pure of heart',
    image: 'https://images1.apartments.com/i2/7gtr2S-hWcTwHtLZiRCjPqKnSzM2mqF8CBBMAzbzbZY/117/111-lofts-tulsa-ok-primary-photo.jpg',
  },
  {
    street: 'Ok Apartment',
    city: 'Tulsa',
    state: 'United Kingdom',
    manager: 'Albus Dumbledore',
    email: 'albus@gmail.com',
    price: '100 pounds',
    bedrooms: 6,
    bathrooms: 4,
    pets: 'For anyone pure of heart',
    image: 'https://hot-town-images.s3.us-east-1.amazonaws.com/kotv/production/2017/October/17/dallas-based-company-buys-tulsa-apartment-complex.1508280679000-0.jpeg',
  },
  {
    street: 'Tulsa Place',
    city: 'Tulsa',
    state: 'United Kingdom',
    manager: 'Albus Dumbledore',
    email: 'albus@gmail.com',
    price: '100 pounds',
    bedrooms: 6,
    bathrooms: 4,
    pets: 'For anyone pure of heart',
    image: 'https://res.cloudinary.com/g5-assets-cld/image/upload/x_0,y_0,h_1800,w_3000,c_crop/q_auto,f_auto,fl_lossy,g_center,h_1200,w_2000/g5/g5-c-5et1jp2rm-case-associates-properties-inc-single-domain/g5-cl-1iequmm9nf-polo-run-apartments/uploads/16._Photo_Gallery_Copy_of_Polo_Run_Exterior-1887_mir22t.jpg',
  },
]

apartments.each do |each_apartment|
    user.apartments.create each_apartment
  puts "creating apartment #{each_apartment}"
end