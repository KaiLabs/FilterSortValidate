# How to Filter, Sort, and Validate in Ruby on Rails #

## Description ##
This sample project has a bare bone example of filtering, sorting, validating on Rails.

Note: This is not the only way to do it, and is a very simple implementation. Code has not been refactored as of now.

## Getting this running on your device ##
**Assumes that you are using mac and ruby/ruby on rails setup on device already**

- Download/Clone repo onto your device
- Via terminal/command line, get to parent directory of repo that you just downloaded/cloned
- Run command 'rake db:migrate' to setup database
- Run command 'rake db:seed' to fill in the database
- Run 'rails server' to run the application and go to 'localhost:3000' on your browser
- Go to 'localhost:3000/recipes' to get to index view for recipes


## Guide ##
### Filtering ###
- 'app/views/recipes/index.html.erb' contains the code for search bar and updating params[:search].
- 'app/models/recipe.rb' contains helper function to run the SQL query to filter the database instances
- 'app/controllers/recipes_controller.rb' contains the logic to filter out the recipes based on params[:search]

### Sorting ###
- 'app/views/recipes/index.html.erb' contains the code for the buttons and updating params[:sorting].
- 'app/controllers/recipes_controller.rb' contains the logic to decide which recipes to show 

### Validation ###
- 'app/vies/recipes/_form.html.erb' contains code to make a single field required
- 'app/models/recipe.rb' contains code for specific validation methods you will define
