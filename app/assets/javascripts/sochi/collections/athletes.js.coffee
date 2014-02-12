namespace 'Sochi.Collections', (exports) ->
  class exports.Athletes extends Sochi.Collection
    url: "/athletes"
    model: Sochi.Models.Athlete