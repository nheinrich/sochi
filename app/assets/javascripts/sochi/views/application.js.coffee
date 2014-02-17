@namespace 'Sochi.Views', (exports) ->
  class exports.Application extends Sochi.View
    events:
      'click a.athlete' : 'moreInfo',
      'click a.close' : 'closeModal',
      'click .backdrop' : 'closeModal'

    closeModal: (e) ->
      e.preventDefault()
      $('.modal').remove()

    moreInfo: (e) ->
      e.preventDefault()

      if id = $(e.currentTarget).data('model-id')
        model =  new Sochi.Models.Athlete(id: id)
        model.fetch
          success: ->
            view = new Sochi.Views.AthleteModal
            rendered = view.render(model.attributes)
            $('#application').append(rendered)
