Handlebars.registerHelper 'prettySport', (str, options) ->
  newText = str.replace(/-/g, ' ')
  newText = newText.replace(/\w\S*/g, (text) -> return text.charAt(0).toUpperCase() + text.substr(1).toLowerCase())
  return newText

Handlebars.registerHelper 'countryName', (str, options) ->
  countries = Sochi.Helpers.preloadedJSON.countries
  for country in countries
    return country.name if country.slug == str
