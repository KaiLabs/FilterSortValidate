# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Recipe.create(dish: 'Risotto', description: 'Delicious rise based dish', length: 30, ingredients: 'italian rice, milk, cheese, olive oil, black pepper')
Recipe.create(dish: 'Fried Chicken', description: 'KFC style deep fried chicken', length: 90, ingredients: 'chicken breast, flour, egg, paprika, salt, oregano, vegetable oil')
Recipe.create(dish: 'Garlic Butter Steak', description: 'Medium rare steak cooked with garlic butter sauce', length: 45, ingredients: 'prime steak, butter, salt, garlic, mushrooms, thyme')
Recipe.create(dish: 'French Dressing', description: 'A dressing for your salads', length: 15, ingredients: 'olive oil, tomato, garlic, butter, sour cream, salt, pepper')
Recipe.create(dish: 'Bibimbap', description: 'Korean rice dish', length: 60, ingredients: 'rice, kimchi, ground beef, cucumber, bean sprouts, egg, carrot, gochujang')
Recipe.create(dish: 'Strawberry Cake', description: 'A sponge cake with strawbery cream', length: 120, ingredients: 'eggs, flour, sugar, baking powder, strawberry, heavy cream, unsalted butter')
