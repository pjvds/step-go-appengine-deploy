sudo apt-get update
sudo apt-get install unzip

cd $WERCKER_ROOT
curl -O http://googleappengine.googlecode.com/files/go_appengine_sdk_darwin_amd64-1.8.3.zip ; unzip -x go_appengine_sdk_darwin_amd64-1.8.3
export PATH="$PATH:$(pwd)/go_appengine"
echo "$WERCKER_APPENGINE-DEPLOY_PASSWORD" > "$WERCKER_STEP_TEMP/password"
cd $WERCKER_SOURCE_DIR
appcfg.py update ./ --email="$WERCKER_APPENGINE-DEPLOY_EMAIL" --passin < "$WERCKER_STEP_TEMP/password"
