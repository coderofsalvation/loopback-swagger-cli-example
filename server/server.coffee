loopback = require('loopback')
boot = require('loopback-boot')
app = module.exports = loopback()

app.start = ->
  # start the web server
  app.listen ->
    app.emit 'started'
    baseUrl = app.get('url').replace(/\/$/, '')
    console.log 'Web server listening at: %s', baseUrl
    if app.get('loopback-component-explorer')
      explorerPath = app.get('loopback-component-explorer').mountPath
      console.log 'Browse your REST API at %s%s', baseUrl, explorerPath
    return

# Bootstrap the application, configure models, datasources and middleware.
# Sub-apps like REST API are mounted via boot scripts.
boot app, __dirname, (err) ->
  if err
    throw err
  # start the server if `$ node server.js`
  if require.main == module
    app.start()
  return
