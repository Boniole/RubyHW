# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.delete_all
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Category.delete_all
food = Category.create!(title: "Food")
toys = Category.create!(title: "Toys")
Category.create!(title: "Сlothes")
Category.create!(title: "Shoes")

Product.delete_all
Product.create(name: "Cat Pole Feather Dancer", category: toys, price: 7.99, image: "https://shop-cdn-m.mediazs.com/bilder/cat/pole/feather/dancer/1/400/18062_PLA_Schulze_Katzenangel_Federtaenzer_1.jpg", description: "This cat dangler with natural feathers promises your cat hours of amusement.
On the end of the pole there is an apprx. 20 cm long extension with feathers. The feathers make a rustling sound with every movement - no cat will be able to resist. The feathers must be explored!

The feathers are dyed with non-toxic food colouring.

Cat Pole Feather Dancer at a glance:

natural feathers
dyed with non-toxic food colouring
bendy end
very robust
high quality production
Made in the USA
Size:
Total length: apprx. 80 cm
pole: L 46 cm
bendy pole extension: L 18 cm
Colours may vary illustration in photo upon delivery.
Caution: As with any other product, please supervise your pet with this toy. Check the product regularly for damage, and replace the toy if it is damaged or missing any pieces to avoid potential injury to your pet.")

Product.create(name: "KONG Connects Window Teaser", category: toys, price: 4.99, image: "https://shop-cdn-m.mediazs.com/bilder/kong/connects/window/teaser/0/400/74332_kong_connectswindowteaser_hs_02_0.jpg", description: "The KONG Connects Window Teaser is a challenging and entertaining way to catch your cat’s attention and keep it occupied for a few hours, encouraging play and activity. The KONG Connects Window Teaser is similar to a dangler toy, with a suction cup on the end so that it can be easily fastened onto windows, patio doors and other smooth surfaces. This ensures that your cat can play with the dangler even when you are busy. On the end of the pole, a flower and colourful bird with feathers dance and dangler, teasing your cat and enticing it to stretch, jump and prod at the toy with its paws, causing it to whirl and spin even more wildly!
Inside the bird on the end of the KONG Connects Window Teaser, your cat will detect the irresistible scent of KONG North American premium catnip, which appeals to cats and encourages animated play. This colourful toy ensures long-lasting enjoyment and helps to satisfy your cat’s natural hunting, moving and biting instincts.

KONG Connects Window Teaser at a glance:

Interactive cat toy
Based on cat dangler toys: a flower and colourful bird dance and dangle on a string at the end of a pole
With suction cup: for fastening the toy to windows, patio doors and smooth walls so that you do not always have to hold the toy for your cat to play
Encourages movement: animates your cat to stretch, jump and prod
With catnip: contains premium KONG North American catnip that gives off an enticing scent and promotes play
Crackling filling: for long-lasting entertainment
Colourful feathers: soft chicken feathers to animate your cat
Long-lasting fun: thanks to unpredictable movements and appealing filling
Individual play: allows your cat to entertain itself
Satisfies natural instincts: for moving, hunting and biting
High quality: from premium manufacturer KONG, renowned for creating clever toy ideas that pets love
Colour: blue, purple, pink (cannot be selected)
Material: PP (polypropylene), polyester, catnip, chicken feathers")
Product.create(name: "Aumüller Cat Toy Mouse Valeri", category: toys, price: 2.79, image: "https://shop-cdn-m.mediazs.com/bilder/aumller/cat/toy/mouse/valeri/7/400/33695_pla_aumueller_baldi_maus_hs_baldimaus_grau17_02_7.jpg", description: "The Cat Toy Mouse Valeri from Aumüller is a cute cat toy filled with approx. 5 g of valerian, suitable for all cats!
Valerian is the ideal alternative to catnip. The Mouse Valeri sends out a strong valerian scent which is simply irresistible for your cat. She'll just keep playing, playing, playing, you'll see...

The toy mouse is filled with organic spelt grown in Germany and premium valerian of pharmacy quality, also grown in Germany.
The natural, roughly cut valerian root inside the cushion will be rubbed during play by the coarse spelt. As your cat shakes and moved the toy, the spelt works like a grater and just keeps that scent coming. For extra-long animating smell!

Size:
Length: 13 / 26 cm (without / with tail); width approx. 6 cm; height approx. 6 cm
Approx. 5 g / toy")
Product.create(name: "IAMS for Vitality Kitten Fresh Chicken Dry Cat Food", category: food, price: 31, image: "https://shop-cdn-m.mediazs.com/bilder/iams/for/vitality/kitten/fresh/chicken/dry/cat/food/2/400/8710255127736_3kg_2.jpg", description: "This premium quality IAMS for Vitality Kitten Fresh Chicken Dry Cat Food offers your cat the best possible start in life. As well as a high content of valuable animal protein from chicken and turkey (43%), it also contains special ingredients chosen for their ability to support healthy development. The balanced recipe uses selected ingredients and prebiotics for best digestibility, as well as for a great flavour. Even the fussiest pets will love this IAMS for Vitality Kitten Fresh Chicken Dry Cat Food and will receive all of the vital nutrients needed for overall wellbeing.
IAMS for Vitality Kitten Fresh Chicken Dry Cat Food contains DHA to support the development of healthy brain and eyesight. The tailored formula can have positive effects on cognitive ability, whilst antioxidants encourage a strong immune system. Unsaturated omega fatty acids keep skin healthy and coat glossy. The high nutrient content of this IAMS for Vitality Kitten Fresh Chicken Dry Cat Food with plenty of protein makes it the ideal food for the key initial growth phases, helping build muscle mass and strong bones in young cats between the ages of 1-12 months. This special nutrition can also be beneficial for pregnant or nursing mother cats, providing sufficient energy and strength for them and their offspring.

IAMS for Vitality Kitten Fresh Chicken Dry Cat Food at a glance:

Balanced food especially for young kittens and junior cats aged 1-12 months, or for pregnant or lactating mother cats
Nutrient dense food: with essential animal protein, vitamins and minerals, designed to be beneficial during the growth phase
43% chicken & turkey: with quality animal proteins for a great flavour and aroma and to help build strong muscles
Easy to digest: healthy ingredients and prebiotics make this food very healthy and help to support a balanced gut flora
Cognitive function: the omega-3 fatty acid DHA helps with brain development and good eyesight
Strong bones: recipe designed to promote healthy bone development
Strong immune system: rich in antioxidants and vitamins to boost the body’s defences
Healthy skin & glossy coat: with unsaturated omega-3 & omega-6 fatty acids
With taurine: naturally found in chicken and can help to strengthen eyes and heart
Well accepted: tasty kibble with an improved recipe including lots of chicken and selected ingredients for a great taste
Balanced and complete: all-round nutrition with vitamins, minerals and trace elements, specially adapted to meet the needs in the growth phase
No added flavourings, colourings or preservatives
Shaped pellets: flavourful kibble, designed with your pet’s mouth shape in mind, making them easy to bite and chew
")
# Product.create(name: "", category: toys, price: , image: "", description: "")
# Product.create(name: "", category: toys, price: , image: "", description: "")
# Product.create(name: "", category: toys, price: , image: "", description: "")
# Product.create(name: "", category: toys, price: , image: "", description: "")
# Product.create(name: "", category: toys, price: , image: "", description: "")
