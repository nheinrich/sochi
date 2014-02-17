@namespace 'Sochi.Views', (exports) ->
  class exports.AthleteModal extends Sochi.View
    template: (context) ->
      source = HandlebarsTemplates['athletes/modal'](context)
      Handlebars.compile(source)

    render: (context) ->
      @template(context)
