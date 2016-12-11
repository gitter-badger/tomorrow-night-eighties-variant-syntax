module.exports =
  config:
    backgroundVariant:
      title: 'Theme Variant'
      description: 'Chose between Dark (default) and Light variants'
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
