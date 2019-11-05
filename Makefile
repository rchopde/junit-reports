SRCTOP = .

ifndef VERSION
TIMESTAMP := $(shell date +%y%m%d%H%M)
export VERSION := 1.0.0.0.${TIMESTAMP}
endif

ROOT=/home/y

.PHONY: screwdriver junit regression git_tag dist_tag

platforms:: build

.PHONY: build 

release_version:
	@echo ${VERSION} > ${SD_SOURCE_DIR}/RELEASE
	@echo "Build Description: ${VERSION}"

build: 
	@echo "Provide command to run build here..."

junit: release_version
	@echo "Provide command to run JUnit tests here..."

regression:
	 @echo "Provide command to run regression tests here..."

git_tag:
	@echo "Provide command to  git tag release here..."

dist_tag:
	@echo "Provide command to dist tag release here..."

package:
	@echo "Nothing to package..."

publish:
	@echo "Nothing to publish..."
