module.exports =
  config:
    backgroundVariant:
      title: 'Background variant'
      description: 'Chose between Dark (default) and Light'
      type: 'string'
      default: 'Dark'
      enum: [
        'Dark',
        'Light'
      ]
  activate: (state) ->
    console.log "Activate"
    atom.themes.onDidChangeActiveThemes ->
      Config = require './config'
      Config.apply()
