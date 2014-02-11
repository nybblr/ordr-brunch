exports.config =
  # See http://brunch.io/#documentation for docs.
  paths:
    watched: ['app']
    public: 'build'
  files:
    javascripts:
      joinTo:
        'app.js': /^app/
        'vendor.js': /^(?!app)/
      order:
        before: [
          "vendor/scripts/auto-reload.js"
        ]
    stylesheets:
      joinTo: 'app.css'
    templates:
      joinTo: 'app.js'
  server:
    port: 3000
  plugins:
    coffeescript:
      bare: false
    autoReload:
      enabled:
        css: on
        js: on
        assets: true
    static_jade:
      extension: ".static.jade"   # static-compile each file with this extension in `assets`

  modules:
    wrapper: false
    definition: false
