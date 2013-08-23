# Go App Engine Deploy

A step that deploys Go applications to Google App Engine. This step depends on `pjvds/setup-go-workspace` to setup the Go workspace first!

## Options

### required

* `email` - The email address of the Google account to use for deployment.
* `password` - The password of the Google account to use for deployment.

## Example

    deploy:
      steps:
        - pjvds/setup-go-workspace

        - pjvds/appengine-deploy:
            email: pj@wercker.com
            password: $APP_ENGINE_PASS
