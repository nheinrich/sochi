== Sochi - coding exercise

1. Add something to the Sochi.Helpers.preloadedJSON object that will allow you to key off of the Athletes country_code and return the full country name, e.g., "USA" == "United States", etc.

2. Register a new Handlebars helper function named 'prettySport' that takes a string argument and substitutes any "-" with spaces and capitalizes the first letter of each word.  Make sure this is defined in the 'sochi/helpers/template_helpers' file.
    
3. Change the click event in Sochi.Views.Application to launch a modal view, e.g., 'Sochi.Views.AthleteModal' that will display all of that Athlete model attributes ( except for the id ).  Also make sure to do the following:
    
    1. The parameterized sport attribute should be converted with the Handlebars prettySport helper.
    2. The preloadedJSON object should be used to display the full country name for the Athlete's country_code attribute.  
    3. Include a close button and corresponding Backbone event that removes the modal.
    4. Use an .hbs template within templates/athletes folder for the modal template and a corresponding Backbone View within sochi/views/athletes
  
    Note: Use whatever lib you'd like for the modal.  Just require everything correctly and make sure to not go overboard - simpler is better!



 

