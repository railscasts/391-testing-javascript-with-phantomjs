page = require('webpage').create()
page.open 'http://localhost:3000', (status) ->
  title = page.evaluate -> document.title
  console.log "Title: #{title}"
  phantom.exit()
