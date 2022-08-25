# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Jewel.destroy_all

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
watch1 = Jewel.new(name: 'Montre en acier', price_per_day: 50, brand: 'Christian Lacroix', category: 'Watch', user: user1,
                  comment: "Montre Christian Lacroix femmes - CLW213 Si l'univers de Christian Lacroix vous fascine depuis toujours, on parie que cette montre vous fera fondre d'amour ! Niché au coeur d'un boîtier rose gold, son cadran vous transportera sans délai dans des contrées exotiques, celles-là mêmes qui inspirent le couturier français depuis des décennies. Orchidées, fleurs de paradis et palmiers s'y mêlent avec harmonie, pour vous faire rêver et vous transmettre des ondes positives ! Indiquant l'heure au moyen de deux aiguilles et d'une ronde d'index bâtons, cette montre Christian Lacroix pour femmes remplit sa mission principale à la perfection. En guise de bracelet, elle s'est laissée séduire par le charme de la maille milanaise, ici d'une incroyable finesse... - mouvement deux aiguilles - cadran décoré de fleurs exotiques - élégant bracelet en maille milanaise - silhouette rose gold féminine et tendance - design emblématique du style coloré de Lacroix")
file5 = URI.open("https://www.montresandco.com/22010-large_default/montre-christian-lacroix-en-acier.jpg")
watch1.photos.attach(io: file5, filename: "Lacroix.jpg", content_type: "image/jpg")
watch1.save!
puts "create watch 2"
watch2 = Jewel.new(name: 'Milgauss Blue Dial 2022', price_per_day: 300, brand: 'Rolex', category: 'Watch', user: user3,
  comment: "Conçue en 1956 pour répondre aux besoins des ingénieurs et des scientifiques, l’Oyster Perpetual Milgauss est une montre pionnière dans la résistance aux champs magnétiques. Elle est capable de résister à des champs magnétiques d’une ampleur de 1 000 gauss, d’où son nom. Montre unique en son genre, la Milgauss souligne les liens historiques qui unissent Rolex à la recherche scientifique.")
file6 = URI.open("https://cdn2.chrono24.com/images/uhren/23749536-jkifhb67r0usrfai75i2nr4r-ExtraLarge.jpg")
filex = URI.open("https://www.41watch.com/10365-thickbox_default/rolex-milgauss-116400gv-z-blue-2022.jpg")
filey = URI.open("https://www.kleenedelmetalen.nl/wp-content/uploads/2022/02/116400GV-Rolex-Oyster-Perpetual-Milgauss-Steel-Green-Glass-40-mm-5.jpeg")
watch2.photos.attach(io: file6, filename: "Milgauss.jpg", content_type: "image/jpg")
watch2.photos.attach(io: filex, filename: "Milgauss2.jpg", content_type: "image/jpg")
watch2.photos.attach(io: filey, filename: "Milgauss3.jpg", content_type: "image/jpg")
watch2.save!
puts "create watch 3"
watch3 = Jewel.new(name: 'Code 11.59', price_per_day: 250, brand: 'Audemars Piguet', category: 'Watch', user: user2,
  comment: "De géométrie complexe (c’est la caractéristique de cette collection), elle se compose d’une carrure octogonale positionnée entre une lunette ronde extra-fine et un fond de boîte, rond lui aussi.
  En outre, le haut des cornes est soudé à la lunette extra-fine alors que la partie inférieure est en alignement avec le fond de boîte. Cette architecture est soulignée par une alternance de surfaces satinées, chanfreinées et polies.
  Développé par les artisans du Brassus (là où se trouve la manufacture AP), le cadran laqué bleu fumé est agrémenté d’une finition soleillée procurant un jeu de lumière permanent, à l’image des rayons du soleil… Quant au réhaut noir, il vise à renforcer cette impression en apportant une profondeur au cadran.")
file7 = URI.open("https://www.montres-de-luxe.com/photo/art/grande/59157150-43525371.jpg?v=1632729918")
watch3.photos.attach(io: file7, filename: "Audemars.jpg", content_type: "image/jpg")
watch3.save!
puts "create watch 4"
watch4 = Jewel.new(name: 'Titane GMT', price_per_day: 500, brand: 'Bremont Boeing', category: 'Watch', user: user3,
  comment: "Le design épuré du modèle 1 Titanium (le GMT simple) se veut le reflet de l’allure sobre du tout premier avion conçu par Boeing, tandis que le modèle 247 Titanium (chrono) s’inspire d’un avion de ligne plus moderne, le 247 bimoteur datant des années 1930. Une première pour Bremont : tous deux sont antimagnétiques (cage en fer doux) et fabriqués en titane aéronautique Ti-6-4, « un matériau bien plus résistant que le titane que l’on trouve dans le commerce et qui est largement employé pour la réalisation des fuselages et des pièces de moteurs ». ")
file8 = URI.open("https://www.montres-de-luxe.com/photo/art/grande/7614758-11762920.jpg?v=1427390056")
watch4.photos.attach(io: file8, filename: "Bermont.jpg", content_type: "image/jpg")
watch4.save!
puts "create watch 5"
watch5 = Jewel.new(name: 'Elégante', price_per_day: 350, brand: 'F.P.Journe', category: 'Watch', user: user4,
  comment: "Conçue en 1956 pour répondre aux besoins des ingénieurs et des scientifiques, l’Oyster Perpetual Milgauss est une montre pionnière dans la résistance aux champs magnétiques. Elle est capable de résister à des champs magnétiques d’une ampleur de 1 000 gauss, d’où son nom. Montre unique en son genre, la Milgauss souligne les liens historiques qui unissent Rolex à la recherche scientifique.")
file9 = URI.open("https://www.montres-de-luxe.com/photo/art/grande/65606394-46775339.jpg?v=1656036019")
watch5.photos.attach(io: file9, filename: "Journe.jpg", content_type: "image/jpg")
watch5.save!
puts "create bracelet 1"
bracelet1 = Jewel.new(name: 'Bracelet bois de rose', price_per_day: 150, brand: 'Dior', category: 'Bracelet', user: user1,
  comment: "Plus que jamais contemporaine, la collection Bois de Rose rend hommage à la rose, la fleur fétiche de Christian Dior, en réinterprétant sa tige dans un jeu d'abstraction virtuose. Cette dernière, ponctuée d'épines d'or ou de diamants, s'enroule délicatement autour du doigt, du poignet ou de l'oreille comme un symbole d'attachement. Pour créer votre propre look, vous pouvez accumuler vos bracelets Bois de Rose entre eux. Ces bracelets pourront aussi être associés aux autres créations des collections Bois de Rose et Rose Dior Couture.")
file10 = URI.open("https://img.edenly.com/pt/40/bracelet-or-blanc-18-carats-diamant__5695782_1.png?_gl=1*1y12e22*_gcl_aw*R0NMLjE2NjEyNDc0MDAuQ2owS0NRanc5WkdZQmhDRUFSSXNBRVVYSVRYSFlYVC1zLUlkZU5tTE9raFRKMGtwOHRuN0pkMW9XcW9NRnN0MmZfWk14YTZjNkdIZlVwZ2FBc2s3RUFMd193Y0I.*_ga*NzY3MzI5ODEyLjE2NjEyNDc0MDA.*_ga_8CPY8KXX7V*MTY2MTI0NzM5OS4xLjAuMTY2MTI0NzM5OS42MC4wLjA")
bracelet1.photos.attach(io: file10, filename: "Dior.jpg", content_type: "image/jpg")
bracelet1.save!
puts "create bracelet 2"
bracelet2 = Jewel.new(name: 'Astrale', price_per_day: 100, brand: 'Edenly', category: 'Bracelet', user: user2,
  comment: "Un jonc astral constellé de diamants sur tout sa surface, pour un bijou de lumière au poignet.
  Largeur haut: 7mm - largeur bas: 3mm - diamètre: 63mm.
  - 144 diamants : 1.01 carats - Or blanc (18 carats = 750/1000) : 15.66 g.")
file10 = URI.open("https://img.edenly.com/diamant/jonc-constellation-astrale-1-rang-diamants-1-24-carat-21-diamants-or-blanc-18-carats__5679294_1-z.jpg?_gl=1*16y0kpj*_ga*MTUzMzgzNjI5Ny4xNjYxNDIzMDQ0*_ga_8CPY8KXX7V*MTY2MTQyMzA0My4xLjAuMTY2MTQyMzA0My42MC4wLjA.")
bracelet2.photos.attach(io: file10, filename: "Edenly.jpg", content_type: "image/jpg")
bracelet2.save!
puts "create bracelet 3"
bracelet3 = Jewel.new(name: 'Allegra', price_per_day: 400, brand: 'De Grisogno', category: 'Bracelet', user: user3,
  comment: "Bracelet De Grisogono Collection Allegra en or rose 18 carats orné de 102 diamants de 0.075 carats chacun, soit 7.65 carats au total.
  Qualité du diamant
  Couleur : Fancy Light brownish pink
  Clarté : VVS1/VVS2
  Poids : 157.90 gr.
  Dimensions : 7.38 x 7.14 cm
  Diamètre intérieur : 4.50 x 4.30 cm
  Tour de pointer : 18 cm")
file10 = URI.open("https://images.unsplash.com/photo-1573408301185-9146fe634ad0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1175&q=80")
bracelet3.photos.attach(io: file10, filename: "Grisogno.jpg", content_type: "image/jpg")
bracelet3.save!
puts "create bracelet 4"
bracelet4 = Jewel.new(name: 'Serpenti Viper', price_per_day: 200, brand: 'Bulgari', category: 'Bracelet', user: user1,
  comment: "An ultra-modern interpretation of Bulgari’s icon of endless metamorphosis and unstoppable transformation, the Serpenti Viper 18 kt white gold bracelet enchants with the stark simplicity and sleek sensuality of its hypnotic design. ")
file10 = URI.open("https://images.unsplash.com/photo-1508022909583-69228d7b2f8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
bracelet4.photos.attach(io: file10, filename: "Bulgari.jpg", content_type: "image/png")
bracelet4.save!
puts "create bracelet 5"
bracelet5 = Jewel.new(name: 'Bracelet tête de Lion', price_per_day: 150, brand: 'Gucci', category: 'Bracelet', user: user4,
  comment: "Fabriqué en or jaune 18 carats, ce bracelet présente une tête de lion avec une pierre profondément nuancée et facettée dans la gueule, tandis que les yeux sont sertis de diamants blancs précieux. Reflétant la fascination pour la nature luxuriante et les animaux sauvages qui nourrit l’univers Gucci, le félin est devenu l’un des symboles de la Maison.")
file11 = URI.open("https://images.unsplash.com/photo-1586878340506-af074f2ee999?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
bracelet5.photos.attach(io: file11, filename: "Dior.jpg", content_type: "image/jpg")
bracelet5.save!
puts "create ring 1"
ring1 = Jewel.new(name: 'Rose des vents', price_per_day: 200, brand: 'Dior', category: 'Ring', user: user3,
  comment: "Victoire de Castellane réinterprète l’étoile porte-bonheur de monsieur Dior, sous la forme d’une Rose des vents, étoile à huit branches. Pour cette nouvelle bague ouverte, elle associe ce motif iconique avec le diamant scintillant de la collection Mimirose.")
file12 = URI.open("https://images.unsplash.com/photo-1627293530222-0df384f8a419?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1780&q=80")
ring1.photos.attach(io: file12, filename: "Dior.jpg", content_type: "image/jpg")
ring1.save!
puts "create ring 2"
ring2 = Jewel.new(name: "Second Wife Band", price_per_day: 100, brand: 'Sansoeurs', category: 'Ring', user: user2,
  comment: "Bague avec plaque rectangulaire de 40 x 1,2 mm en or blanc 18K (sertissage des diamants) soudée à une bande de 0,9 mm d'épaisseur en or rose 18K. Le largeur de la pièce est variable dès 6 mm de la partie avec diamants jusqu'aux 4 mm de la partie derrière.")
file13 = URI.open("https://www.sansoeurs.com/media/catalog/product/cache/ee06d307ffeb509d147fce7087791ce7/i/m/img_6645web_copia_white.jpg")
ring2.photos.attach(io: file13, filename: "Sansoeurs.jpg", content_type: "image/jpg")
ring2.save!
puts "create ring 3"
ring3 = Jewel.new(name: 'Ellipse', price_per_day: 50, brand: 'Ginette NY', category: 'Ring', user: user1,
  comment: "ELLIPSES & SEQUINS, de la forme de l'ellipse, à celle du sequin, c'est un jeu de pleins et de vides, qui se décline en or, pierres ornementales ou diamants.")
file14 = URI.open("https://www.ginette-ny.com/media/catalog/product/cache/efa7a274d68a57c0a848979cbd6fc5bb/R/E/RELDN_principale.jpg")
ring3.photos.attach(io: file14, filename: "Ginette.jpg", content_type: "image/jpg")
ring3.save!
puts "create ring 4"
ring4 = Jewel.new(name: 'B Blossom Or jaune', price_per_day: 70, brand: 'Louis Vuitton', category: 'Ring', user: user2,
  comment: "Issue de la collection B Blossom, cette bague remarquable est confectionnée en or jaune et or blanc 18 karats. Son anneau est agrémenté d'un motif sphérique qui évoque un sceau. Celui-ci est serti d'une fleur de Monogram composée de quatre diamants scintillants. Cette pièce est conçue pour les femmes inoubliables.")
file15 = URI.open("https://images.unsplash.com/photo-1611955167811-4711904bb9f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80")
ring4.photos.attach(io: file15, filename: "Vuitton.jpg", content_type: "image/jpg")
ring4.save!
puts "create ring 5"
ring5 = Jewel.new(name: 'Bague en Or blanc', price_per_day: 100, brand: 'Boucheron', category: 'Ring', user: user3,
  comment: "Bague en or blanc et diamants Boucheron Snake Two Finger")
file16 = URI.open("https://images.unsplash.com/photo-1598560917807-1bae44bd2be8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1780&q=80")
ring5.photos.attach(io: file16, filename: "Boucheron.jpg", content_type: "image/jpg")
ring5.save!
puts "create earrings 1"
earrings1 = Jewel.new(name: "Divas' Dream", price_per_day: 100, brand: 'Bulgari', category: 'Earring', user: user4,
  comment: "Boucle d'oreille DIVAS’ DREAM en or rose 18 K sertie d’éléments en cornaline et de diamants ronds taille brillant")
file17 = URI.open("https://images.unsplash.com/photo-1629224316810-9d8805b95e76?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
earrings1.photos.attach(io: file17, filename: "Bulgari.jpg", content_type: "image/jpg")
earrings1.save!
puts "create earrings 2"
earrings2 = Jewel.new(name: 'BOUCLES D’OREILLES PERLES YSL EN MÉTAL', price_per_day: 50, brand: 'Yves Saint Laurent', category: 'Earring', user: user4,
  comment: "PAIRE DE BOUCLES D’OREILLES PERLES, PETITE ET GRANDE, ORNÉES D’UN MONOGRAMME YSL")
file18 = URI.open("https://images.unsplash.com/photo-1615197419962-90f21da0956d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
earrings2.photos.attach(io: file18, filename: "YSL.jpg", content_type: "image/jpg")
earrings2.save!
puts "create earrings 3"
earrings3 = Jewel.new(name: 'Boucles en Or', price_per_day: 60, brand: 'Versace', category: 'Earring', user: user1,
  comment: "Petites boucles en or à clous.")
file18 = URI.open("https://images.unsplash.com/photo-1588444650700-fd887f15a9e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")
earrings3.photos.attach(io: file18, filename: "Versace.jpg", content_type: "image/jpg")
earrings3.save!
puts "create earrings 4"
earrings4 = Jewel.new(name: "Boucles d'oreilles Olympe", price_per_day: 80, brand: 'Hermes', category: 'Earring', user: user2,
  comment: "Boucles d'oreilles en lézard Niloticus lisse. Finition plaqué or rose.")
file19 = URI.open("https://images.unsplash.com/photo-1603974372039-adc49044b6bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1934&q=80")
earrings4.photos.attach(io: file19, filename: "Hermes.jpg", content_type: "image/jpg")
earrings4.save!
puts "create earrings 5"
earrings5 = Jewel.new(name: 'Bague en Or blanc', price_per_day: 100, brand: 'Buccelati', category: 'Earring', user: user3,
  comment: "Boucles d'oreilles en or 18 carats (750/1000) et émail Opera Tulle")
file20 = URI.open("https://images.unsplash.com/photo-1635444918032-f94a58bce8b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
earrings5.photos.attach(io: file20, filename: "Buccelati.jpg", content_type: "image/jpg")
earrings5.save!
puts "create necklace 1"
necklace1 = Jewel.new(name: 'Medaillon rose des vents', price_per_day: 150, brand: 'Dior', category: 'Necklace', user: user4,
  comment: "Victoire de Castellane réinterprète l'étoile porte-bonheur de monsieur Dior, sous la forme d'une Rose des vents, étoile à huit branches.
  Une torsade grain de riz vient ourler le médaillon qui se retourne sur sa chaîne, côté pierre dure ou côté Rose des vents, au gré des mouvements.")
file21 = URI.open("https://images.unsplash.com/photo-1635767798638-3e25273a8236?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
necklace1.photos.attach(io: file21, filename: "Dior.jpg", content_type: "image/jpg")
necklace1.save!
puts "create necklace 2"
necklace2 = Jewel.new(name: 'Collier Vintage Alhambra', price_per_day: 200, brand: 'Van Cleef and Arpels', category: 'Necklace', user: user4,
  comment: "Or jaune 750/1000, Onyx
  VCARA42700")
file22 = URI.open("https://www.vancleefarpels.com/content/dam/rcq/vca/16/26/47/9/1626479.png")
necklace2.photos.attach(io: file22, filename: "Vcleef.jpg", content_type: "image/png")
necklace2.save!
puts "create necklace 3"
necklace3 = Jewel.new(name: "Diva's Dream collier", price_per_day: 200, brand: 'Bulgari', category: 'Necklace', user: user2,
  comment: "Boucles d'oreilles en or 18 carats (750/1000) et émail Opera Tulle")
file23 = URI.open("https://images.unsplash.com/photo-1630918489439-e515f0601a36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
necklace3.photos.attach(io: file23, filename: "Bulgari.jpg", content_type: "image/jpg")
necklace3.save!
puts "create necklace 4"
necklace4 = Jewel.new(name: 'Collier Moon', price_per_day: 70, brand: 'Pascale Monvoisin', category: 'Necklace', user: user1,
  comment: "Chaine or rose 14 carats
  Pendentif or jaune 9 carats
  Diamants
  Cristal de roche")
file24 = URI.open("https://pascalemonvoisin.com/1580/moon-n1.jpg")
necklace4.photos.attach(io: file24, filename: "PMonvoisin.jpg", content_type: "image/jpg")
necklace4.save!
puts "create necklace 5"
necklace5 = Jewel.new(name: 'PENDENTIF JEUX DE LIENS', price_per_day: 90, brand: 'Chaumet Paris', category: 'Necklace', user: user3,
  comment: "Pendentif Jeux de Liens en or rose, serti de nacre et d'un diamant taille brillant.")
file25 = URI.open("https://images.unsplash.com/photo-1618403088890-3d9ff6f4c8b1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=408&q=80")
necklace5.photos.attach(io: file25, filename: "Chaumet.jpg", content_type: "image/jpg")
necklace5.save!
