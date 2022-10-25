# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all

user1 = User.new(email: 'seb.vill@gmail.com', first_name: 'Sebastien', last_name: 'VILLEBRUN', password: 'somepassword',
                    password_confirmation: 'somepassword',
                    admin: true)
avatar1 = URI.open("https://ca.slack-edge.com/T02NE0241-U03NK7993ST-f2719ded36c6-512")
user1.photo.attach(io: avatar1, filename: 'myface', content_type: "image/jpg")
user1.save!

user2 = User.new(email: 'ba.po@gmail.com', first_name: 'Baptiste', last_name: 'PONCET', password: 'somepassword',
                    password_confirmation: 'somepassword',
                    admin: true)
avatar2 = URI.open("https://ca.slack-edge.com/T02NE0241-U03NRPQCG1F-119a57eec9f6-512")
user2.photo.attach(io: avatar2, filename: 'myface', content_type: "image/jpg")
user2.save!

user3 = User.new(email: 'sacha.go@gmail.com', first_name: 'Sacha', last_name: 'GOTAINER', password: 'somepassword',
                    password_confirmation: 'somepassword',
                    admin: false)
avatar3 = URI.open("https://ca.slack-edge.com/T02NE0241-U03NA1WF0TX-dff6dafc9e44-512")
user3.photo.attach(io: avatar3, filename: 'myface', content_type: "image/jpg")
user3.save!

user4 = User.new(email: 'fa.shah@gmail.com', first_name: 'Fariha', last_name: 'SHAH', password: 'somepassword',
                    password_confirmation: 'somepassword',
                    admin: false)
avatar4 = URI.open("https://ca.slack-edge.com/T02NE0241-U03P6G5NK9P-bdc0ee480f0e-512")
user4.photo.attach(io: avatar4, filename: 'myface', content_type: "image/jpg")
user4.save!
puts "create watch 1"
watch1 = Jewel.new(address: '16 Villa Gaudelet, Paris, France', name: 'Steel Watch', price_per_day: 50, brand: 'Christian Lacroix', category: 'Watch', user: user1,
                  comment: "Christian Lacroix women's watch - CLW213 If the world of Christian Lacroix has always fascinated you, we bet that this watch will make you fall in love! Nestled in the heart of a rose gold case, its dial will immediately transport you to exotic lands, the very ones that have inspired the French couturier for decades. Orchids, flowers of paradise and palm trees mingle harmoniously, to make you dream and send you positive vibes! Showing the time by means of two hands and a round of stick indexes, this Christian Lacroix watch for women fulfills its main mission to perfection. As a bracelet, she let herself be seduced by the charm of Milanese mesh, here of incredible finesse... - two-hand movement - dial decorated with exotic flowers - elegant Milanese mesh bracelet - feminine rose gold silhouette and trendy - iconic design of Lacroix's colorful style")
file5 = URI.open("https://www.montresandco.com/22010-large_default/montre-christian-lacroix-en-acier.jpg")
watch1.photos.attach(io: file5, filename: "Lacroix.jpg", content_type: "image/jpg")
watch1.save!
puts "create watch 2"
watch2 = Jewel.new(address:'210 Rue de Rivoli, Paris, France', name: 'Milgauss Blue Dial 2022', price_per_day: 300, brand: 'Rolex', category: 'Watch', user: user3,
  comment: "Designed in 1956 to meet the needs of engineers and scientists, the Oyster Perpetual Milgauss is a pioneering watch in the resistance to magnetic fields. It is able to withstand magnetic fields with a magnitude of 1,000 gauss, hence its name. A one-of-a-kind watch, the Milgauss highlights the historic ties that unite Rolex with scientific research.")
file6 = URI.open("https://cdn2.chrono24.com/images/uhren/23749536-jkifhb67r0usrfai75i2nr4r-ExtraLarge.jpg")
filex = URI.open("https://www.41watch.com/10365-thickbox_default/rolex-milgauss-116400gv-z-blue-2022.jpg")
filey = URI.open("https://www.kleenedelmetalen.nl/wp-content/uploads/2022/02/116400GV-Rolex-Oyster-Perpetual-Milgauss-Steel-Green-Glass-40-mm-5.jpeg")
watch2.photos.attach(io: file6, filename: "Milgauss.jpg", content_type: "image/jpg")
watch2.photos.attach(io: filex, filename: "Milgauss2.jpg", content_type: "image/jpg")
watch2.photos.attach(io: filey, filename: "Milgauss3.jpg", content_type: "image/jpg")
watch2.save!
puts "create watch 3"
watch3 = Jewel.new(address:'120 Rue de Montmartre, Paris, France', name: 'Code 11.59', price_per_day: 250, brand: 'Audemars Piguet', category: 'Watch', user: user2,
  comment: "With a complex geometry (this is the characteristic of this collection), it consists of an octagonal middle part positioned between an extra-thin round bezel and a caseback, which is also round.
  In addition, the top of the lugs is welded to the extra-thin bezel, while the lower part is aligned with the caseback. This architecture is underlined by an alternation of satin-brushed, chamfered and polished surfaces.
  Developed by the craftsmen of Le Brassus (where the AP factory is located), the smoked blue lacquered dial is embellished with a sunray finish providing a permanent play of light, like the rays of the sun...")
file7 = URI.open("https://www.montres-de-luxe.com/photo/art/grande/59157150-43525371.jpg?v=1632729918")
watch3.photos.attach(io: file7, filename: "Audemars.jpg", content_type: "image/jpg")
watch3.save!
puts "create watch 4"
watch4 = Jewel.new(address:'12 Rue Portefoin, Paris, France', name: 'Titane GMT', price_per_day: 500, brand: 'Bremont Boeing', category: 'Watch', user: user3,
  comment: "The sleek design of the Model 1 Titanium (the simple GMT) is intended to reflect the sober allure of the very first aircraft designed by Boeing, while the Model 247 Titanium (chrono) is inspired by a more modern airliner, the twin-engine 247 dating from the 1930s. A first for Bremont: both are antimagnetic (soft iron cage) and made of aeronautical titanium Ti-6-4, 'a material much stronger than the titanium found in the trade and which is widely used for the production of fuselages and engine parts'.")
file8 = URI.open("https://www.montres-de-luxe.com/photo/art/grande/7614758-11762920.jpg?v=1427390056")
watch4.photos.attach(io: file8, filename: "Bermont.jpg", content_type: "image/jpg")
watch4.save!
puts "create watch 5"
watch5 = Jewel.new(address:'13 Rue des Barres, Paris, France', name: 'Elégante', price_per_day: 350, brand: 'F.P.Journe', category: 'Watch', user: user4,
  comment: "Designed in 1956 to meet the needs of engineers and scientists, the Oyster Perpetual Milgauss is a pioneering watch in the resistance to magnetic fields. It is able to withstand magnetic fields with a magnitude of 1,000 gauss, hence its name. A one-of-a-kind watch, the Milgauss highlights the historic ties that unite Rolex with scientific research.")
file9 = URI.open("https://www.montres-de-luxe.com/photo/art/grande/65606394-46775339.jpg?v=1656036019")
watch5.photos.attach(io: file9, filename: "Journe.jpg", content_type: "image/jpg")
watch5.save!
puts "create bracelet 1"
bracelet1 = Jewel.new(address:'85 Rue Mouffetard, Paris, France', name: 'Bracelet "Bois de Rose"', price_per_day: 150, brand: 'Dior', category: 'Bracelet', user: user1,
  comment: "More contemporary than ever, the Bois de Rose collection pays homage to the rose, Christian Dior's favorite flower, by reinterpreting its stem in a virtuoso game of abstraction. The latter, punctuated with gold thorns or diamonds, wraps delicately around the finger, the wrist or the ear as a symbol of attachment. To create your own look, you can stack your Bois de Rose bracelets together. These bracelets can also be combined with other creations from the Bois de Rose and Rose Dior Couture collections.")
file10 = URI.open("https://img.edenly.com/pt/40/bracelet-or-blanc-18-carats-diamant__5695782_1.png?_gl=1*1y12e22*_gcl_aw*R0NMLjE2NjEyNDc0MDAuQ2owS0NRanc5WkdZQmhDRUFSSXNBRVVYSVRYSFlYVC1zLUlkZU5tTE9raFRKMGtwOHRuN0pkMW9XcW9NRnN0MmZfWk14YTZjNkdIZlVwZ2FBc2s3RUFMd193Y0I.*_ga*NzY3MzI5ODEyLjE2NjEyNDc0MDA.*_ga_8CPY8KXX7V*MTY2MTI0NzM5OS4xLjAuMTY2MTI0NzM5OS42MC4wLjA")
bracelet1.photos.attach(io: file10, filename: "Dior.jpg", content_type: "image/jpg")
bracelet1.save!
puts "create bracelet 2"
bracelet2 = Jewel.new(address:'27 Rue de Fleurus, Paris, France', name: 'Astrale', price_per_day: 100, brand: 'Edenly', category: 'Bracelet', user: user2,
  comment: "An astral band studded with diamonds over its entire surface, for a jewel of light on the wrist.
    Top width: 7mm - bottom width: 3mm - diameter: 63mm.
    - 144 diamonds: 1.01 carats - White gold (18 carats = 750/1000): 15.66 g.")
file10 = URI.open("https://img.edenly.com/diamant/jonc-constellation-astrale-1-rang-diamants-1-24-carat-21-diamants-or-blanc-18-carats__5679294_1-z.jpg?_gl=1*16y0kpj*_ga*MTUzMzgzNjI5Ny4xNjYxNDIzMDQ0*_ga_8CPY8KXX7V*MTY2MTQyMzA0My4xLjAuMTY2MTQyMzA0My42MC4wLjA.")
bracelet2.photos.attach(io: file10, filename: "Edenly.jpg", content_type: "image/jpg")
bracelet2.save!
puts "create bracelet 3"
bracelet3 = Jewel.new(address:'17 Avenue de Breteuil, Paris, France', name: 'Allegra', price_per_day: 400, brand: 'De Grisogno', category: 'Bracelet', user: user3,
  comment: "De Grisogono Allegra Collection bracelet in 18K pink gold adorned with 102 diamonds of 0.075 carats each, i.e. 7.65 carats in total.
  Diamond quality
  Colour: Fancy Light brownish pink
  Clarity: VVS1/VVS2
  Weight: 157.90 g.
  Size: 7.38 x 7.14cm
  Inner diameter: 4.50 x 4.30 cm
  Pointing circumference: 18 cm.")
file10 = URI.open("https://images.unsplash.com/photo-1573408301185-9146fe634ad0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1175&q=80")
bracelet3.photos.attach(io: file10, filename: "Grisogno.jpg", content_type: "image/jpg")
bracelet3.save!
puts "create bracelet 4"
bracelet4 = Jewel.new(address:'10 Rue du Colisée, Paris, France', name: 'Serpenti Viper', price_per_day: 200, brand: 'Bulgari', category: 'Bracelet', user: user1,
  comment: "An ultra-modern interpretation of Bulgari’s icon of endless metamorphosis and unstoppable transformation, the Serpenti Viper 18 kt white gold bracelet enchants with the stark simplicity and sleek sensuality of its hypnotic design. ")
file10 = URI.open("https://images.unsplash.com/photo-1508022909583-69228d7b2f8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
bracelet4.photos.attach(io: file10, filename: "Bulgari.jpg", content_type: "image/png")
bracelet4.save!
puts "create bracelet 5"
bracelet5 = Jewel.new(address:"20 Rue d'Aumale, Paris, France", name: '"Tête de lion" bracelet', price_per_day: 150, brand: 'Gucci', category: 'Bracelet', user: user4,
  comment: "Crafted in 18k yellow gold, this bracelet features a lion's head with a deeply nuanced and faceted stone in the mouth, while the eyes are set with precious white diamonds. Reflecting the fascination for lush nature and wild animals that fuels the Gucci universe, the feline has become one of the House's symbols.")
file11 = URI.open("https://images.unsplash.com/photo-1586878340506-af074f2ee999?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
bracelet5.photos.attach(io: file11, filename: "Dior.jpg", content_type: "image/jpg")
bracelet5.save!
puts "create ring 1"
ring1 = Jewel.new(address:"18 Rue de Dunkerque, Paris, France", name: 'Rose des vents', price_per_day: 200, brand: 'Dior', category: 'Ring', user: user3,
  comment: "Victoire de Castellane reinterprets Mr. Dior's lucky star, in the form of a Rose of the Winds, an eight-pointed star. For this new open ring, she combines this iconic motif with the sparkling diamond from the Mimirose collection.")
file12 = URI.open("https://www.lepage.fr/31526-large_default/bague-ouverte-dior-rose-des-vents-en-or-rose-opale-rose-et-diamants.jpg")
ring1.photos.attach(io: file12, filename: "Dior.jpg", content_type: "image/jpg")
ring1.save!
puts "create ring 2"
ring2 = Jewel.new(address:"24 Rue Pétion, Paris, France", name: "Second Wife Band", price_per_day: 100, brand: 'Sansoeurs', category: 'Ring', user: user2,
  comment: "Ring with rectangular plate of 40 x 1.2 mm in 18K white gold (set with diamonds) welded to a band 0.9 mm thick in 18K pink gold. The width of the piece is variable from 6 mm in the part with diamonds to 4 mm in the back part.")
file13 = URI.open("https://www.sansoeurs.com/media/catalog/product/cache/ee06d307ffeb509d147fce7087791ce7/i/m/img_6645web_copia_white.jpg")
ring2.photos.attach(io: file13, filename: "Sansoeurs.jpg", content_type: "image/jpg")
ring2.save!
puts "create ring 3"
ring3 = Jewel.new(address:"152 Rue de Charenton, Paris, France", name: 'Ellipse ring', price_per_day: 50, brand: 'Ginette NY', category: 'Ring', user: user1,
  comment: "ELLIPSES & SEQUINS, from the shape of the ellipse to that of the sequin, it is a game of solids and voids, which comes in gold, ornamental stones or diamonds.")
file14 = URI.open("https://www.ginette-ny.com/media/catalog/product/cache/5c171bc6e99e933b68c8df5326e9de6d/R/S/xRSQ5DN_principale.jpg.pagespeed.ic.AfN-Vnymy7.jpg")
ring3.photos.attach(io: file14, filename: "Ginette.jpg", content_type: "image/jpg")
ring3.save!
puts "create ring 4"
ring4 = Jewel.new(address:"12 Rue Ricaut, Paris, France", name: 'B Blossom ring', price_per_day: 70, brand: 'Louis Vuitton', category: 'Ring', user: user2,
  comment: "Part of the B Blossom collection, this striking ring is crafted in 18 karat yellow and white gold. Its ring is embellished with a spherical motif that evokes a seal. This one is set with a Monogram flower composed of four sparkling diamonds. This piece is designed for unforgettable women.")
file15 = URI.open("https://images.unsplash.com/photo-1611955167811-4711904bb9f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80")
ring4.photos.attach(io: file15, filename: "Vuitton.jpg", content_type: "image/jpg")
ring4.save!
puts "create ring 5"
ring5 = Jewel.new(address:"20 Rue du Moulin Vert, Paris, France", name: 'White gold ring', price_per_day: 100, brand: 'Boucheron', category: 'Ring', user: user3,
  comment: "Boucheron Snake Two Finger white gold and diamond ring")
file16 = URI.open("https://www.boucheron.com/media/catalog/product/cache/2c8688fb81358ddc5134bd82859b9cd3/j/r/jrg02144_1_2.jpg")
ring5.photos.attach(io: file16, filename: "Boucheron.jpg", content_type: "image/jpg")
ring5.save!
puts "create earrings 1"
earrings1 = Jewel.new(address:"25 Rue Plumet, Paris, France", name: "Divas' Dream earrings ", price_per_day: 100, brand: 'Bulgari', category: 'Earring', user: user4,
  comment: "
  The DIVAS' DREAM earrings reveal the refined elegance of each diva thanks to the purity of their feminine silhouette and the sumptuous brilliance of the pavé diamonds.")
file17 = URI.open("https://media2.bulgari.com/f_auto,q_auto/production/dw8e6e0848/images/images/469631.png")
earrings1.photos.attach(io: file17, filename: "Bulgari.jpg", content_type: "image/jpg")
earrings1.save!
puts "create earrings 2"
earrings2 = Jewel.new(address:"42 Rue de la Pompe, Paris, France", name: 'Pearls earrings YSL', price_per_day: 50, brand: 'Yves Saint Laurent', category: 'Earring', user: user4,
  comment: "Pair of pearl earrings adorned with a YSL monogram.")
file18 = URI.open("https://images.unsplash.com/photo-1615197419962-90f21da0956d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
earrings2.photos.attach(io: file18, filename: "YSL.jpg", content_type: "image/jpg")
earrings2.save!
puts "create earrings 3"
earrings3 = Jewel.new(address:"164 Rue de Courcelles, Paris, France", name: 'Gold earrings', price_per_day: 60, brand: 'Versace', category: 'Earring', user: user1,
  comment: "Small gold earrings with studs.")
file18 = URI.open("https://images.unsplash.com/photo-1588444650700-fd887f15a9e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
earrings3.photos.attach(io: file18, filename: "Versace.jpg", content_type: "image/jpg")
earrings3.save!
puts "create earrings 4"
earrings4 = Jewel.new(address:"247 Rue Marcadet, Paris, France", name: "Olympe earrings", price_per_day: 80, brand: 'Hermes', category: 'Earring', user: user2,
  comment: "Smooth Niloticus lizard earrings. Rose gold plated finish.")
file19 = URI.open("https://qvc.scene7.com/is/image/QVC/j/65/j363365.001?$aempdlarge$")
earrings4.photos.attach(io: file19, filename: "Hermes.jpg", content_type: "image/jpg")
earrings4.save!
puts "create earrings 5"
earrings5 = Jewel.new(address:"17 Rue Mathis, Paris, France", name: 'White gold earrings', price_per_day: 100, brand: 'Buccelati', category: 'Earring', user: user3,
  comment: "Earrings in 18 carat gold (750/1000) and enamel Opera Tulle.")
file20 = URI.open("https://images.unsplash.com/photo-1635444918032-f94a58bce8b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
earrings5.photos.attach(io: file20, filename: "Buccelati.jpg", content_type: "image/jpg")
earrings5.save!
puts "create necklace 1"
necklace1 = Jewel.new(address:"59 Rue Orfila, Paris, France", name: 'Medallion rose des vents', price_per_day: 150, brand: 'Dior', category: 'Necklace', user: user4,
  comment: "Victoire de Castellane reinterprets Monsieur Dior's lucky star, in the form of a Rose des vents, an eight-pointed star.
  A grain of rice twist hems the medallion which turns on its chain, hard stone side or Rose des vents side, according to the movements.")
file21 = URI.open("https://i.pinimg.com/originals/39/dc/fd/39dcfd8da466af80a0e27dadf67ca84f.jpg")
necklace1.photos.attach(io: file21, filename: "Dior.jpg", content_type: "image/jpg")
necklace1.save!
puts "create necklace 2"
necklace2 = Jewel.new(address:"83 Rue de Grenelle, Paris, France", name: 'Alhambra necklace', price_per_day: 200, brand: 'Van Cleef and Arpels', category: 'Necklace', user: user4,
  comment: "Alhambra necklace model:750/1000 yellow gold, Onyx.")
file22 = URI.open("https://www.cornerluxe.com/35455-thickbox_default/-collier-van-cleef-arpels--alhambra-20.jpg")
necklace2.photos.attach(io: file22, filename: "Vcleef.jpg", content_type: "image/png")
necklace2.save!
puts "create necklace 3"
necklace3 = Jewel.new(address:"3 Rue Lulli, Paris, France", name: "Diva's Dream necklace", price_per_day: 200, brand: 'Bulgari', category: 'Necklace', user: user2,
  comment: "Diva pink gold necklace with pavé diamonds.")
file23 = URI.open("https://fecarotta-com.cdn-immedia.net/wp-content/uploads/2018/10/CL857315.png")
necklace3.photos.attach(io: file23, filename: "Bulgari.jpg", content_type: "image/jpg")
necklace3.save!
puts "create necklace 4"
necklace4 = Jewel.new(address:"56 Rue de la victoire, Paris, France", name: 'Moon necklace', price_per_day: 70, brand: 'Pascale Monvoisin', category: 'Necklace', user: user1,
  comment: "14k rose gold chain,
  9 carat yellow gold pendant,
  Rock Crystal Diamonds.")
file24 = URI.open("https://images.unsplash.com/photo-1589128777073-263566ae5e4d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
necklace4.photos.attach(io: file24, filename: "PMonvoisin.jpg", content_type: "image/jpg")
necklace4.save!
puts "create necklace 5"
necklace5 = Jewel.new(address:"146 Rue de Saussure, Paris, France", name: 'Jeux de liens pendant', price_per_day: 90, brand: 'Chaumet Paris', category: 'Necklace', user: user3,
  comment: "Jeux de Liens pendant in pink gold, set with mother-of-pearl and a brilliant-cut diamond.")
file25 = URI.open("https://images.unsplash.com/photo-1618403088890-3d9ff6f4c8b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=408&q=80")
necklace5.photos.attach(io: file25, filename: "Chaumet.jpg", content_type: "image/jpg")
necklace5.save!
