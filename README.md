# GoTTY Offline Deployment on CF

This is a fork to Dan Mikusa's github repo (https://github.com/dmikusa-pivotal/cf-ex-gotty) that deploy [GoTTY](https://github.com/yudai/gotty) to CF without internet access. Please check his github repo if your CF have direct internet access or through HTTP(s) proxy.

## Deployment

1. Clone this repo
2. Download [GoTTY Linux x64 Binary](https://github.com/yudai/gotty/releases), extract `gotty` file into _gotty_ folder and set correct execute permission. Alternatively use `deploy.sh` at this repo as a reference to download recent _v0.0.13_ GoTTY version.
3. (Optional) Update `manifest.yml` if needed. e.g. update env variables to specify GoTTY Credential for Basic Authentication
4. Run `cf push` and access from a browser `https://<app url>:<websocket port>`.

## Note

[GoTTY itself runs as a websocket server](https://github.com/yudai/gotty#architecture). Specify the websocket port when accessing from a browser if not using the default port `443` at CF deployment.

## Reference

1. [Push an App using Binary Buildpack](http://docs.cloudfoundry.org/buildpacks/binary/index.html#pushing_apps)
2. [Process Types and the Procfile](https://devcenter.heroku.com/articles/procfile)
3. [Supporting WebSockets](https://docs.cloudfoundry.org/adminguide/supporting-websockets.html)
