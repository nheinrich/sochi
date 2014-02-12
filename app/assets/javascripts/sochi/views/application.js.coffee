@namespace 'Sochi.Views', (exports) ->
  class exports.Application extends Sochi.View
    events:
      "click a.athlete" : "moreInfo"
    
    moreInfo: (e) ->
      e.preventDefault()
      $link = $(e.currentTarget)
  
      model = if id = $(e.currentTarget).data("model-id")
        new Sochi.Models.Athlete(id: id)
        
      model.fetch
        success: ->
          console.log JSON.stringify(model)


