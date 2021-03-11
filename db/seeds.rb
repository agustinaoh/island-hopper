Island.destroy_all
User.destroy_all

# users seeds
avatar1 = URI.open('https://res.cloudinary.com/dsz5gd9a3/image/upload/v1615302078/vicky-hladynets-C8Ta0gwPbQg-unsplash_jwpyzl.jpg')
avatar2 = URI.open('https://res.cloudinary.com/dsz5gd9a3/image/upload/v1615302095/julian-wan-2EdIX-O2lkI-unsplash_oez03y.jpg')
avatar3 = URI.open('https://res.cloudinary.com/dsz5gd9a3/image/upload/v1615302112/michael-dam-mEZ3PoFGs_k-unsplash_oznodo.jpg')

user1 = User.new(first_name: "Sally", last_name: "Seashell", email: "guillaume@myisland.com", password: "password")
user1.avatar.attach(io: avatar1, filename: 'nes.png', content_type: 'image/png')
user1.save!

user2 = User.new(first_name: "Daire", last_name: "Teabag", email: "daire@yahoo.com", password: "password")
user2.avatar.attach(io: avatar2, filename: 'nes.png', content_type: 'image/png')
user2.save!

user3 = User.new(first_name: "Agustina", last_name: "Gonzales", email: "richard@branson.com", password: "password")
user3.avatar.attach(io: avatar3, filename: 'nes.png', content_type: 'image/png')
user3.save!


file1 = URI.open('https://images.unsplash.com/photo-1553603227-2358aabe821e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2089&q=80')
file2 = URI.open('https://images.unsplash.com/photo-1559128010-7c1ad6e1b6a5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1652&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1533604145636-765f22ac7352?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
file4 = URI.open('https://images.unsplash.com/photo-1468082547792-d37c6c74003e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1655&q=80')
file5 = URI.open('https://images.unsplash.com/photo-1550064758-04c17f69818d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1498&q=80')
file6 = URI.open('https://images.unsplash.com/photo-1567005231342-61cacea5fc88?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1789&q=80')
file7 = URI.open('https://images.unsplash.com/photo-1524010068540-5ee093903f5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
file8 = URI.open('https://images.unsplash.com/photo-1529333241880-9558d5e5e064?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=716&q=80')
file9 = URI.open('https://images.unsplash.com/photo-1468082547792-d37c6c74003e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1655&q=80')
file10 = URI.open('https://images.unsplash.com/photo-1533604145636-765f22ac7352?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')

island1 = Island.new(
    name: "Marokau",
    location: "Groenland",
    description: "While very cold ans icy, this island will compensate with the warmth of its local people, and it's local alcohol.",
    capacity: 10,
    price_per_night: 30,
    facilities: "Pool, tennis court",
    user: user1
    )
island1.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')
island1.save!

island2 = Island.new(
    name: "Takuu",
    location: "Tahiti, French polinesia",
    description: "This Island is ideal for a romantic stay, featuring all the necessary utilities to enjoy a great time there.",
    capacity: 5,
    price_per_night: 40,
    facilities: "Pool, tennis court" ,
    user: user2
    )
island2.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
island2.save!

island3 = Island.new(
    name: "Corsica",
    location: "Corsica, France",
    description: "This Island is ideal for a romantic stay, featuring all the necessary utilities to enjoy a great time there.",
    capacity: 2,
    price_per_night: 50,
    facilities: "Pool, tennis court" ,
    user: user3
    )
island3.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
island3.save!

island4 = Island.new(
    name: "Hiu",
    location: "Indian Ocean",
    description: "The most remote Island. Perfect to escape the city life and start mediation.",
    capacity: 30,
    price_per_night: 100,
    facilities: "Pool, tennis court" ,
    user: user2
    )
island4.photos.attach(io: file4, filename: 'nes.png', content_type: 'image/png')
island4.save!

island5 = Island.new(
    name: "Oktyabr'skoy Revolyutsii",
    location: "Easgter Island",
    description: "This Island is ideal for a romantic stay, featuring all the necessary utilities to enjoy a great time there.",
    capacity: 100,
    price_per_night: 30,
    facilities: "Pool, tennis court" ,
    user: user3
    )

island5.photos.attach(io: file5, filename: 'nes.png', content_type: 'image/png')
island5.save!

island6 = Island.new(
    name: "Menorca",
    location: "Menorca",
    description: "This island is part of the Baleares archipelo, in the middle of the Mediterranean sea. Ideal for outdoor activites and scuba diving.",
    capacity: 15,
    price_per_night: 75,
    facilities: "Pool, tennis court" ,
    user: user1
    )
island6.photos.attach(io: file6, filename: 'nes.png', content_type: 'image/png')

island6.save!

island7 = Island.new(
    name: "Ibiza",
    location: "Ibiza",
    description: "This island is part of the Baleares archipelo, in the middle of the Mediterranean sea. Ideal for outdoor activites and scuba diving.",
    capacity: 100 ,
    price_per_night: 25,
    facilities: "Pool, tennis court" ,
    user: user2
    )
island7.photos.attach(io: file7, filename: 'nes.png', content_type: 'image/png')

island7.save!

island8 = Island.new(
    name: "Ile de ré",
    location: "Ile de ré",
    description: "This island is perfect if your are an oyester lover. Nothing more to do though.",
    capacity: 3,
    price_per_night: 200,
    facilities: "Pool, tennis court" ,
    user: user3
    )
island8.photos.attach(io: file8, filename: 'nes.png', content_type: 'image/png')

island8.save!

island9 = Island.new(
    name: "Fernando de Noronha",
    location: "Illa grande ",
    description: "Have you heard about the paradise on earth ? Well here you are !",
    capacity: 20,
    price_per_night: 18,
    facilities: "Pool, tennis court" ,
    user: user1
    )
island9.photos.attach(io: file9, filename: 'nes.png', content_type: 'image/png')

island9.save!

island10 = Island.new(
    name: "Madagascar",
    location: "Madagascar",
    description: "Probably the biggest island avaialble on Island Hopper. also one of the most tropical !",
    capacity: 15,
    price_per_night: 50,
    facilities: "Pool, tennis court" ,
    user: user2
    )
island10.photos.attach(io: file10, filename: 'nes.png', content_type: 'image/png')
island10.save!
