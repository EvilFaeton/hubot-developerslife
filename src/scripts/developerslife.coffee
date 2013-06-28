# Description:
#   Do you know what it takes to be a developer
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot developer's life  - Grab a random gif from http://developerslife.ru/
#
# Author:
#   EvilFaeton
module.exports = (robot)->
  robot.respond /developer(\')?s( )?life/i, (message)->
    url = "http://developerslife.ru/random?json=true"
    message.http( url ).get() (error, response, body)->
      life = JSON.parse body
      message.send "#{life.description}: #{life.gifURL}" unless error
