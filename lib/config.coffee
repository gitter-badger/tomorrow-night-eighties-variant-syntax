fs = require 'fs'
path = require 'path'

module.exports =

  apply: ->

    updateColor = () ->
      # Step 1 - background
      background = atom.config.get "eighties.backgroundVariant"
      background_file = "#{__dirname}/../styles/variant-colors/" + background + ".less"
      background_content = fs.readFileSync background_file, "utf8"
      fs.writeFileSync background_content

    # When starting
    updateColor()

    # When config changes
    atom.config.onDidChange 'eighties.backgroundVariant', updateColor
