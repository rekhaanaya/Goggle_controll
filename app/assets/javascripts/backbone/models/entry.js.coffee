class GoogleControll.Models.Entry extends Backbone.Model
  paramRoot: 'entry'

#  defaults:

class GoogleControll.Collections.EntriesCollection extends Backbone.Collection
  model: GoogleControll.Models.Entry
  url: '/api/entries'
