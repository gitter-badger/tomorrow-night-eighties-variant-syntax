fs = require 'fs'
path = require 'path'

module.exports =

  apply: ->

    updateColor = () ->
      background = atom.config.get "tomorrow-night-eigthies-variant-syntax.backgroundVariant"
      background_path = "#{__dirname}/../styles/background.less"
      background_content = ""
      background_file = "#{__dirname}/../styles/variantcolors/" + background + ".less"
      background_content = fs.readFileSync background_file, "utf8"
      fs.writeFileSync background_path, background_content

    # When starting
    updateColor()

    # When config changes
    atom.config.onDidChange 'tomorrow-night-eigthies-variant-syntax.backgroundVariant', () ->
      updateColor()
    
      
