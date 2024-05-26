# DevToolChain

DevToolChain is a Website that builds with Flutter.

## Installation

Use this script to install deploy on web.

```bash
make deploy_web
```

## Usage

```makefile
#ENTER YOUR PROJECT NAME
BASE_HREF = '/xtremehub_web/'

#ENTER YOUR GITHUB REPOSITORY LINK
GITHUB_REPO = https://github.com/devtoolchain/xtremehub_website.git
BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')
CUSTOM_DOMAIN = xtremehub.devtoolchain.com

deploy_web:
	@echo "Clean Existing Repository..."
	flutter clean

	@echo "Getting Packages..."
	flutter pub get

	@echo "Building for Web..."
	flutter build web --release --base-href=$(BASE_HREF)

	@echo "Creating CNAME File..."
	echo "${CUSTOM_DOMAIN}" > build/web/CNAME

	@echo "Deploying to Git Repository..."
	cd build/web && \
	git init && \
	git add . && \
    #ENTER YOUR COMMIT MESSAGE
	git commit -m "Deploying XtremeHub Website v$(BUILD_VERSION)" $$ \
	# git branch -M main && \
	git remote add origin $(GITHUB_REPO) && \
	git push -u --force origin main

	cd ../..
	@echo "✅ Finished Deploying on Web"

.PHONY: deploy_web
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)