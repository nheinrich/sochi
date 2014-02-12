@namespace 'Sochi', (exports) ->
  exports.templates = Thorax.templates = Handlebars.templates || {}
  exports.Views = Thorax.Views
  exports.Models = Thorax.Models
  exports.Collections = Thorax.Collections

  exports.csrfToken = $("meta[name=csrf-token]").attr("content")
  exports.csrfParam = $("meta[name=csrf-param]").attr("content")

  exports.csrfData = {}
  exports.csrfData[exports.csrfParam] = exports.csrfToken