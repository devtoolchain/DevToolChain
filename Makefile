BASE_HREF = '/xtremehub_web/'
GITHUB_REPO = https://github.com/devtoolchain/devtoolchain_website.git
BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')
# CUSTOM_DOMAIN = xtremehub.devtoolchain.com


deploy_web:
   @echo "Clean Existing Repository..."
   flutter clean


   @echo "Getting Packages..."
   flutter pub get


   @echo "Building for Web..."
   flutter build web --release --base-href=$(BASE_HREF)


#    @echo "Creating CNAME File..."
#    echo "${CUSTOM_DOMAIN}" > build/web/CNAME


   @echo "Deploying to Git Repository..."
   cd build/web && \
   git init && \
   git add . && \
   git commit -m "Deploying Devtoolchain Website v$(BUILD_VERSION)" $$ \
   git branch -M main && \
   git remote add origin $(GITHUB_REPO) && \
   git push -u --force origin main


   cd ../..
   @echo "✅ Finished Deploying on Web"


.PHONY: deploy_web

