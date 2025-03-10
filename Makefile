install:
	composer install

brain-games:
	./bin/brain-gamesmake

validate:
	composer validate

	.DEFAULT_GOAL := build-run

setup:
	./gradlew wrapper --gradle-version 8.5

clean:
	./gradlew clean

build:
	./gradlew clean build

install:
	./gradlew clean install

run-dist:
	./build/install/java-package/bin/java-package

run:
	./gradlew run

test:
	./gradlew test

report:
	./gradlew jacocoTestReport

lint:
	./gradlew checkstyleMain
	composer exec --verbose phpcs -- src tests

check-deps:
	./gradlew dependencyUpdates -Drevision=release


build-run: build run

.PHONY: build
