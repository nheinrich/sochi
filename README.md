# Sochi Coding Exercise

## Setup

1. Fork the repo
2. Make sure you have the rb version in the Gemfile and have bundler installed ```gem install bundler```
3. ```bundle install```
4. Run the migration and seed the db: ```bundle exec rake db:migrate db:seed``` 
5. Start the application ```rails server``` and open up your browser to ```localhost:3000``` which should display an unstyled list of the Sochi Athletes in the seed file.  Clicking each Athlete should display the corresponding Athelete object in your browser's console.

## Exercise

1. Add something to the Sochi.Helpers.preloadedJSON object that will allow you to key off of the Athletes abbreviated country and return the full country name, e.g., ```"USA" == "United States"```, etc.

1. Register a new Handlebars helper function named ```prettySport``` that takes a string argument and substitutes any "-" with spaces and capitalizes the first letter of each word.  Make sure this is defined in the ```'sochi/helpers/template_helpers'``` file.
    
1. Change the click event in ```Sochi.Views.Application``` to launch a modal view, e.g., ```Sochi.Views.AthleteModal``` ( or whatever you want to name it ) that will display all of the Athlete model attributes ( except for the id ).  Also make sure to do the following:
    
    * The parameterized sport attribute should be converted with the Handlebars ```prettySport``` helper.
    * The preloadedJSON object should be used to display the full country name for the Athlete's country attribute.  
    * Include a close button and corresponding Backbone event that removes the modal.
    * Use an ```.hbs``` template within ```templates/athletes``` folder for the modal template and a corresponding Backbone View within ```sochi/views/athletes```
    * Note: Use whatever lib you'd like for the modal.  Just require everything correctly and make sure to not go overboard - simpler is better!

## Submit

1. Just send a PR


### Resources

1. https://github.com/wycats/handlebars.js
2. http://thoraxjs.org/api.html#thorax.view
 

